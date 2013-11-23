class Event < ActiveRecord::Base
  require "icalendar/tzinfo"

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
    event.start = starting
    event.end = ending
    event.summary = title
    event.description = self.description
    event.location = 'On the interwebs!'
    event.klass = "PUBLIC"
    event.created = self.created_at.utc.strftime("%Y%m%dT%H%M%SZ")
    event.last_modified = self.updated_at.utc.strftime("%Y%m%dT%H%M%SZ")
    event.uid = event.url = "http://motionmeetup.com/archives/#{self.id}"
    event.add_comment("Brought to you by http://www.iconoclastlabs.com/")

    event.alarm do
      summary "MotionMeetup coming up soon!"
      trigger "-P0DT1H0M0S" # 1 hour before
    end

    event
  end

  def to_calendar
    cal = Icalendar::Calendar.new
    cal.add("TZ:+00\n")
    cal.add_event(to_ics)
    cal.publish
    cal.to_ical
  end

  private
  def starting
    self.happening.utc.strftime("%Y%m%dT%H%M%SZ")
  end

  def ending
    (self.happening + 1.hour).utc.strftime("%Y%m%dT%H%M%SZ")
  end


end
