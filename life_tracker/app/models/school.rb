class School < ActiveRecord::Base
  belongs_to :person

  validates :beginning_year, :ending_year, :name, presence: true
  validates :beginning_year, :ending_year, numericality: { only_integer: true, greater_than: 1900 }
  validates :ending_year, numericality: {greater_than_or_equal_to: :beginning_year}
end
