class User < ActiveRecord::Base

  validates :social_security_number, :numericality => {:only_integer => true}
  validates :social_security_number, length: { minimum: 9, maximum: 9 }
  validates :first_name,:last_name,:email, :presence => true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
