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
	      flash[:success] = "You're all set!"
	    else
	      flash[:error] = "Please fill all fields correctly."
	    end

	end
  end

end
