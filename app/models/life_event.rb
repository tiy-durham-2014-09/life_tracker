class LifeEvent < ActiveRecord::Base
  validates :desc, presence: true,
            length: { maximum: 140 }
end
