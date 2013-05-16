# == Schema Information
#
# Table name: archives
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :string(255)
#  body       :text
#  publish_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string(255)
#

class Archive < ActiveRecord::Base
  extend FriendlyId
  
  attr_accessible :body, :name, :publish_at, :title
  friendly_id name
end
