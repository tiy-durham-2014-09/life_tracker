class LifeEvent < ActiveRecord::Base
	belongs_to :person
	validates :title, :year, presence: true, allow_blank: false
	validates_length_of :year, :minimum => 4, :maximum => 4
	validates_length_of :description, :minimum => 1, :maximum => 140, :allow_blank => false
	validates :year, numericality: { only_integer: true }
end
