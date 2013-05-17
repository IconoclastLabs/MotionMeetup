# == Schema Information
#
# Table name: archives
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  body       :text
#  publish_at :datetime
#  created_at :datetime
#  updated_at :datetime
#  slug       :string(255)
#

class Archive < ActiveRecord::Base
  extend FriendlyId


  friendly_id :name, :use => :slugged
end
