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
  description: "",
  guest: "Colin T.A. Gray",
  guest_url: "https://twitter.com/colinta"
)

#2
Event.create(
  happening: DateTime.parse('2013-06-17T17:30:00+00:00'),
  description: "",
  guest: "Laurent Sansonetti",
  guest_url: "http://www.rubymotion.com/"
)

#3
Event.create(
  happening: DateTime.parse('2013-07-17T17:30:00+00:00'),
  description: "",
  guest: "Clay Allsopp",
  guest_url: "http://clayallsopp.com/"
)

#4
Event.create(
  happening: DateTime.parse('2013-08-14T17:30:00+00:00'),
  description: "",
  guest: "Nick Quaranto",
  guest_url: "http://quaran.to/"
)

#5
Event.create(
  happening: DateTime.parse('2013-09-18T17:30:00+00:00'),
  description: "",
  guest: "Jamon Holmgren",
  guest_url: "http://www.clearsightstudio.com/"
)

#6
Event.create(
  happening: DateTime.parse('2013-10-16T17:30:00+00:00'),
  description: "",
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

