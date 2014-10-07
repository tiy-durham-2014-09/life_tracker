class School < ActiveRecord::Base
  validates :name, :beginning_year, :ending_year, presence: true, allow_blank: false
  validates_numericality_of :beginning_year, :ending_year, :only_integer => true
  validates_numericality_of :ending_year, {:greater_than_or_equal_to => :beginning_year}
end
