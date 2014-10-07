class LifeEvent < ActiveRecord::Base
  validates :title, :year, presence: true, allow_blank: false
  validates_length_of :description, :minimum => 1, :maximum =>140, :message=>"You are exceded of characters, maximum length is #{%{value}.length}" #:allow_blank => false
  validates :year, presence: true, :allow_blank => false, numericality: { only_integer: true }
end
