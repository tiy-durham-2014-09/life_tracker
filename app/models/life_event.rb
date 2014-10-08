class LifeEvent < ActiveRecord::Base
  belongs_to :person
  validates :description, presence: true,
            length: { maximum: 140 }
end
