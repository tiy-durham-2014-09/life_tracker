class Person < ActiveRecord::Base
  has_many :schools
  has_many :life_events

  validates :name, presence: true
end
