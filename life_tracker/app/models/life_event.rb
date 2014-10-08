class LifeEvent < ActiveRecord::Base
  belongs_to :person
  validates :event, presence: true
  validates :description, presence: true
end
