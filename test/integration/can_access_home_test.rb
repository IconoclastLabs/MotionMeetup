require 'test_helper'

feature "Home Index" do

  scenario "has content" do
    visit root_path
    assert page.has_content?("Monthly Online RubyMotion Meetup")
  end

  scenario "can click to show Sign Up" do
    visit root_path
    assert page.has_content? "MotionMeetup Newsletter Signup"
    assert page.find(:css, 'a#content-y') # sign up
    assert page.has_selector?('#content-y')
  end

end
