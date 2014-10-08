class School < ActiveRecord::Base
  belongs_to :person
    
  validates :name, presence: true
  validates :beginning_year, presence: true
  validates :ending_year, presence: true

end
