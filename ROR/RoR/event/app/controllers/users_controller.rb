class UsersController < ApplicationController
  skip_before_action :require_login, only:[:new,:create]
  def new
     
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new user_params
    if @user
      @user.save
   
      redirect_to '/sessions/login'
    end
  end
  # def update
  #   @user = User.find(params[:id])
  #   if @user.update user_params
  #     redirect_to"/useres/#{@user.id}/edit" #may change
  # end      
  #     flash[:errors] =@user.errors.full_messages
  #     redirect_to"/useres/#{@user.id}/edit" #may change

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      reset_session
      redirect_to "users/new" #may change
    else
      redirect_to "/users/@{user.id}/edit"
    end
  end

  private

  def user_params
      params.require(:user).permit(:first_name, :last_name,:email,:city, :state, :password, :password_confirmation)
  end
end
