class LifeEvent < ActiveRecord::Base
  validates_length_of :description, :maximum => 140
  validates :title, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
end
