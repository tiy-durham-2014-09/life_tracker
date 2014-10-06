class School < ActiveRecord::Base
  validates :name, :beginning_year, :ending_year, presence: true
  validates :beginning_year, :ending_year, numericality: { only_integer: true, greater_than: 1900 }
  validates :ending_year, numericality: {greater_than_or_equal_to: :beginning_year}
end
