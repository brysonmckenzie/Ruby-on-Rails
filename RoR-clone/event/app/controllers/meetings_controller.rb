class MeetingsController < ApplicationController
  def index


  end

  def create
    event = current_user
    event.meetings.create meeting_params

  end

private

  def meeting_params
      params.require(:user).permit(:name, :date, :city, :state, :host, status: :false,)
  end
end
