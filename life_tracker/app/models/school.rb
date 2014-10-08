class School < ActiveRecord::Base
  belongs_to :person
  School.order(:beginning_date)
  validates :school_name, presence: true
  validates :beginning_date, presence: true
  validates :ending_date, presence: true
  validates :beginning_date, :numericality => { :less_than_or_equal_to => :ending_date }
  validates :ending_date, :numericality => { :greater_than_or_equal_to => :beginning_date }

end
