class LifeEvent < ActiveRecord::Base

  validates :event_title, :event_year, presence: true
  validates :event_description, length: { maximum: 140 }
  validates :event_year, length: { is: 4 }
  
end
