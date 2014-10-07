class School < ActiveRecord::Base
  validates :name, presence: true
  validates :start_year, presence: true
end
