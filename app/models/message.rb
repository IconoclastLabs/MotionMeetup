class Message

  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :captcha

  validates :name, :email, :captcha, :presence => false
  validates :email, :format => { :with => %r{.+@.+\..+} }, :allow_blank => false
  validates :captcha, :format => { :with => %r{63}}
  
  def initialize(attributes = {})
    attributes.each do |name, value|
      send("#{name}=", value)
    end
  end

  def persisted?
    false
  end

end
