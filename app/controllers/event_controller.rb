class EventController < ActionController::Base
  protect_from_forgery

  def show
    @event = Event.find(params[:id])

    respond_to do |wants|
      wants.html
      wants.ics do
        render :text => @event.to_calendar
      end
    end
  end

end
