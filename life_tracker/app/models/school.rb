class School < ActiveRecord::Base
  validates :name, presence: true
  validates :beginning_year, presence: true, numericality: { only_integer: true }
  validates :ending_year, presence: true, numericality: { only_integer: true }
  validates :beginning_year, numericality: { less_than_or_equal_to: :ending_year }
  validates :ending_year, numericality: { greater_than_or_equal_to: :beginning_year }
end
