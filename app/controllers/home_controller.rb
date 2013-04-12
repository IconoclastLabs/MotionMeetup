class HomeController < ApplicationController
  def index
  	@message = Message.new
  	check_for_signups
  end


private
  def check_for_signups

  	if params[:message].present?

	    @message = Message.new(params[:message])
	    
	    if @message.valid?
	    	mimi = MadMimi.new(ENV["MIMI_USERNAME"], ENV["MIMI_API"])
      	mimi.add_to_list(@message.email,'MotionMeetup')
      	flash[:notice] = "#{@message.email}, you have successfully signed up!"
	    else
	      flash[:error] = "Please fill all fields correctly."
	    end

	end
  end

end
