class SessionsController < ApplicationController

      skip_before_action :require_login, only:[:new,:create]
  def new




  end

  def create #Log user save to :session id
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      # redirect_to "/#{@user.id}"

      redirect_to '/'
    else   
      flash[:errors] = ["Invalid Combination"]

      redirect_to '/login' #same page 
    end
  end

  def destroy #Destroy :session id  Log user out
    reset_session
    redirect_to '/login'
  end


  
end
