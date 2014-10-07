class LifeEvent < ActiveRecord::Base
validates :title, presence: true
validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates :year, presence: true
validates :description, length: { maximum: 140 }, allow_blank: true
end
