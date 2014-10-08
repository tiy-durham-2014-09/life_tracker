class Person < ActiveRecord::Base
  has_many :schools
  has_many :life_events

  def to_s
    name
  end
end
