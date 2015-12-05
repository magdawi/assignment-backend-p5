class User < ActiveRecord::Base
  has_many :filecards

  has_secure_password
  validates_confirmation_of :password
  validates_presence_of :password_confirmation
  validates_presence_of :name
  validates_presence_of :email
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
end
