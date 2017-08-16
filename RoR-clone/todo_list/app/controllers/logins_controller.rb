class LoginsController < ApplicationController
  def index

  end

  def login 
    user = User.find_by_username(params[:user_name])
    if user.password == params[:password]
      session[:id] = user.id 
      redirect_to '/'
    end
  end

  def registration
    @user = User.new(username: params[:user_name], password: params[:password])
    
      if params[:password] != params[:password_conformation]
        flash[:errors] = 'Your password do not match, Try again!'
      end
      if !@user.valid?
        flash[:errors] = @user.errors.full_messages
      else
        @user.save
        session[:id] = @user.id
      
        flash[:success] = "Yay, now go up and log in!"

      end 
      redirect_to '/logins/index'
  end 

  def logout
    reset_session
    redirect_to '/logins/index'
  end

  

  
end
