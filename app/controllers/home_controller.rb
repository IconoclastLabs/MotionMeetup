class HomeController < ApplicationController
  def index
  	@message = Message.new
    @previous_meetups = Archive.published.limit(2).all
    @upcoming_meetup = Archive.unpublished.first
  end

  def signup
    @previous_meetups = Archive.published.limit(2).all
    @upcoming_meetup = Archive.unpublished.first
    @message = Message.new(archive_params)
    if @message.valid?
      mimi = MadMimi.new(ENV["MIMI_USERNAME"], ENV["MIMI_API"])
      mimi.add_to_list(@message.email,'MotionMeetup')
      flash[:notice] = "#{@message.email}, you have successfully signed up!"
    else
      flash[:error] = "Please fill all fields correctly."
    end
    render :index
  end

private
  def archive_params
    params.require(:message).permit(:name, :email, :captcha)
  end
end