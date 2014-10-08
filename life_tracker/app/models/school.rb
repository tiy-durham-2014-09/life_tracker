class School < ActiveRecord::Base
  belongs_to :person

  validates :person_id, presence: true
  validates :name, presence: true
  validates :start_year, presence: true
  validates :state, presence: true
  validates :country, presence: true
end
