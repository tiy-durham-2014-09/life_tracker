class LifeEvent < ActiveRecord::Base
  belongs_to :person

  validates :person_id, presence: true
  validates :title, presence: true
  validates :date, presence: true
  validates :description,
            length: { maximum: 140 }
end
