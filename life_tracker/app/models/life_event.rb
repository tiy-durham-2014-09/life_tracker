class LifeEvent < ActiveRecord::Base
  belongs_to :person

  validates :title, presence: true
  validates :year, presence: true
  validates :description, presence: true,
            length: {maximum: 140}
end
