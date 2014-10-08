class Person < ActiveRecord::Base
  has_many :school
  has_many :life_event

  def to_s
    name
  end

end
