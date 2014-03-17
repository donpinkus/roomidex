class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :correct_user?
  before_action :set_received_roomidex_requests

  private
    def current_user
      begin
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
      rescue Exception => e
        nil
      end
    end

    def user_signed_in?
      return true if current_user
    end

    def correct_user?
      @user = User.find(params[:id])
      unless current_user == @user
        redirect_to root_url, :alert => "Access denied."
      end
    end

    def authenticate_user!
      if !current_user
        redirect_to root_url, :alert => 'You need to sign in for access to this page.'
      end
    end

    def set_received_roomidex_requests
      if current_user
        @received_roomidex_requests = RoomidexRequest.find(
          :all, 
          :conditions => { 
            :receiver_id => current_user.id, 
            :accepted => [nil, false, ''],
            :ignored => [nil, false, ''] }
        )
        # @received_roomidex_requests = RoomidexRequest.where(
        #   "receiver_id = ? AND ignored IS NULL AND accepted IS NULL", 
        #   current_user.id
        # )
      end
    end

    def set_friends_in_common_map(users)
      @friends_in_common_map = {}
      graph = Koala::Facebook::API.new(session[:oauth_token])
      users.each do |u|
        @friends_in_common_map[u.id] = graph.get_connections(
          "me", 
          "mutualfriends/#{u.uid}"
        )
      end
    end
end
