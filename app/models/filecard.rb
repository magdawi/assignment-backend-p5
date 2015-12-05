class Filecard < ActiveRecord::Base
  belongs_to :subject
  belongs_to :user

  validates_presence_of :question
  validates_presence_of :answer
  validates_presence_of :user
end
