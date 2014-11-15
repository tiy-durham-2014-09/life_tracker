class Person < ActiveRecord::Base
  has_many :life_events
  has_many :schools	
  validates :name, presence: true
  
  def to_s
    name
  end
  
end
