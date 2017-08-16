class TasksController < ApplicationController
  def index
  if session[:id]    
        @user = User.find(session[:id])
        # @task = Task.find(params[:id])
        @tasks = @user.tasks
      #   @task = User.tasks.find(params[:id])
      else
        redirect_to '/login/index'
      end
    # @false = "incomplete"
  end

  def create

    user = User.find(session[:id])
    user.tasks.create(list: params[:task]).save

    redirect_to '/'
     
  end

  def complete

    @task.update.(status:"true"")


  end

  
  def destroy

    Task.find(params[:id]).destroy
    redirect_to '/'
  end
  
  
end
