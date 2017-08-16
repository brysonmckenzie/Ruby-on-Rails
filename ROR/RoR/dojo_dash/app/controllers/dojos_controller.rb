class DojosController < ApplicationController
  def index
    @dojos = Dojo.all
    

  end

  def create
    Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])

    redirect_to 'dojos/'
  end

  def new


  end


  def destroy

    Dojo.find(params[:id]).destroy

    redirect_to '/' 
  
  end

  def update
    
     @dojos = Dojo.find(params[:id]).update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state]) 

    redirect_to '/dojos/'+ params[:id]

  end  

  def edit

    @dojos = Dojo.find(params[:id])
    
  end
  
  def show
   @dojos = Dojo.find(params[:id])
   @show = Dojo.all
  end  

end
