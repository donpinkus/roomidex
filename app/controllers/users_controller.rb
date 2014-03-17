class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user?, :except => [:index, :show]

  def index
    @search = User.search(params[:q])
    @users = @search.result(distinct: true)
    # Unset yourself.
    @users.reject! { |u| u.id == current_user.id }

    set_friends_in_common_map(@users)
  end

  def show
    @user = User.find(params[:id])

    graph = Koala::Facebook::API.new(session[:oauth_token])
    @friends_in_common = graph.get_connections("me", "mutualfriends/#{@user.uid}")
  end

  def edit
    @user = User.find(params[:id])
    if !@user.move 
      @user.build_move
    end
    @neighborhoods = Neighborhood.all
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private 
    def user_params
      params.require(:user).permit(
        :email, 
        :age,
        :gender,
        :university,
        :grad_year,
        :occupation,
        :company,
        move_attributes: [:id, :start_date, :end_date, :user_id, :min_price, 
          :max_price, :city_id, neighborhood_ids: []]
      )
    end
end
