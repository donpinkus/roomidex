class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :correct_user?, :except => [:index, :show]

  def index
    # @users = User.all
    @search = User.search(params[:q])
    @users = @search.result
  end

    def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
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
        :company
      )
    end
end
