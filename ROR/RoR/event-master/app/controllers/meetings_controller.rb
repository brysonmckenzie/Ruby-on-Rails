class MeetingsController < ApplicationController
  def index


  end

  def create
    current_user.meetings_hosted.create(meeting_params)

    redirect_to '/'                 

  end

private

  def meeting_params
      params.require(:meetingn).permit(:name, :date, :city, :state).merge(current_user)
  end
end
