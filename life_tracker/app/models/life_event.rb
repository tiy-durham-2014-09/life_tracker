class LifeEvent < ActiveRecord::Base
  belongs_to :person

  validates :title, :year, presence: true
  validates :year, numericality: { only_integer: true, greater_than: 1900 }
  validates :description, length: { maximum: 140 }
  validates :description, length: { minimum: 5 }, allow_blank: true
end
