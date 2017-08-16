class EventsController < ApplicationController
   def index
    @in_states_event = Event.where(state: current_user.state)
    @other_states_event = Event.where.not(state: current_user.state)
    
      @attendee = Attendant.where(current_user.id event.id)
      puts '*****8******' 
      puts @attendee 
      puts '*****8*******' 
    end
  

  def create
    event = Event.create(meetings: params[:name], date: params[:date], city: params[:city], state: params[:state], user_id: current_user.id) 
          if event.valid?
            redirect_to '/'
          else
          flash[:errors] = event.errors.full_messages
          redirect_to '/'         
          end

    end

  def attend
    
   
  end
    
 
  def update 
  
  end


  



end
