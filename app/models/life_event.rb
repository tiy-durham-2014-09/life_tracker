class LifeEvent < ActiveRecord::Base
  belongs_to :person
  validates :desc, presence: true,
            length: { maximum: 140 }
end
