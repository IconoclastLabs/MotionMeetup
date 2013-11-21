# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) are set in the file config/application.yml.
# See http://railsapps.github.com/rails-environment-variables.html

#1
Event.create(
  happening: DateTime.parse('2013-05-15T17:30:00+00:00'),
  description: "Colin is the author of several RubyMotion gems, including Sugarcube and SweetTea, syntactical sugar for RubyMotion.  Clay is also the Community Manager for RubyMotion.",
  guest: "Colin T.A. Gray",
  guest_url: "https://twitter.com/colinta"
)

#2
Event.create(
  happening: DateTime.parse('2013-06-17T17:30:00+00:00'),
  description: "Laurent is the creator RubyMotion and owner at HipByte.",
  guest: "Laurent Sansonetti",
  guest_url: "http://www.rubymotion.com/"
)

#3
Event.create(
  happening: DateTime.parse('2013-07-17T17:30:00+00:00'),
  description: "Clay is an active maintainer of the widely used Bubblewrap gem for RubyMotion and is part of Propeller, a startup using RubyMotion.",
  guest: "Clay Allsopp",
  guest_url: "http://clayallsopp.com/"
)

#4
Event.create(
  happening: DateTime.parse('2013-08-14T17:30:00+00:00'),
  description: "Nick is the author of the motion-layout gem, and recently shipped 37signals' new Basecamp app using RubyMotion.",
  guest: "Nick Quaranto",
  guest_url: "http://quaran.to/"
)

#5
Event.create(
  happening: DateTime.parse('2013-09-18T17:30:00+00:00'),
  description: "Jamon is the creator of ProMotion, which has a fresh take on the iOS MVC pattern.",
  guest: "Jamon Holmgren",
  guest_url: "http://www.clearsightstudio.com/"
)

#6
Event.create(
  happening: DateTime.parse('2013-10-16T17:30:00+00:00'),
  description: "Juan Karam is the creator of Joybox, a RubyMotion game library based on Cocos2D.",
  guest: "Juan Karam",
  guest_url: "http://joybox.io/"
)

#7
Event.create(
  happening: DateTime.parse('2013-11-21T17:30:00+00:00'),
  description: "Dennis is the RubyMine project lead developer at JetBrains, which has tightly integrated with RubyMotion.",
  guest: "Dennis Ushakov",
  guest_url: "http://jetbrains.com/"
)

#8
Event.create(
  happening: DateTime.parse('2013-12-15T17:30:00+00:00'),
  description: "Mark Rickert is the heart of Mohawk Apps, a passionate RubyMotion developer and Core contributor to many gems (including ProMotion).",
  guest: "Mark Rickert",
  guest_url: "http://www.mohawkapps.com/"
)

