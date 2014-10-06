class School < ActiveRecord::Base
	validates :name, :beginningYear, :endingYear, presence: true, allow_blank: false
	validates :beginningYear, :endingYear, numericality: { only_integer: true }
	validates :endingYear, numericality: { greater_than_or_equal_to: :beginningYear }
end
