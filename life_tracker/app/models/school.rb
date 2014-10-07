class School < ActiveRecord::Base
  validates :school_name, presence: true
  validates :beginning_date, presence: true
  validates :ending_date, presence: true
  validates :beginning_date, :numericality => { :less_than_or_equal_to => :ending_date }
end