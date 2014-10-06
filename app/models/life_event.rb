class LifeEvent < ActiveRecord::Base
validates :title, presence: true
validates :year, presence: true
validates :description, length: { maximum: 140 }, allow_blank: true
end
