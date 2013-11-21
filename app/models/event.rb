class Event < ActiveRecord::Base

  def self.upcoming
    where("happening > ?", Time.now).order(happening: :asc)
  end

  def title
    "MotionMeetup # #{self.id}"
  end

  def month_year
    self.happening.strftime("%B %Y")
  end

  def to_ics
    event = Icalendar::Event.new
    event.start = self.happening.strftime("%Y%m%dT%H%M%S")
    event.end = (self.happening + 1.hour).strftime("%Y%m%dT%H%M%S")
    event.summary = title
    event.description = self.description
    event.location = 'On the interwebs!'
    event.klass = "PUBLIC"
    event.created = self.created_at
    event.last_modified = self.updated_at
    event.uid = event.url = "http://motionmeetup.com/archives/#{self.id}"
    event.add_comment("Brought to you by http://www.iconoclastlabs.com/")

    event.alarm do
      summary       "MotionMeetup coming up soon!"
      trigger       "-P0DT1H0M0S" # 1 day before
    end

    event
  end

end
