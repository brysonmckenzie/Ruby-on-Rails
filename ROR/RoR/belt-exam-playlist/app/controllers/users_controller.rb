class UsersController < ApplicationController
 skip_before_action :require_login, only:[:new,:create]
  def new
    @user = User.find(params[:id])
  end

  def create
    @user = User.new (user_params)
    if @user
      @user.save
    else 
      flash[:errors] = ["Invalid Combination"]

      redirect_to "/sessions/new"
  end

  def destroy
    reset_session
    redirect_to "/sessions/new"
  end

private

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

  end
end


