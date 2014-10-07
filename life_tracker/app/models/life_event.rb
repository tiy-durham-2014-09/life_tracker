class LifeEvent < ActiveRecord::Base
  validates :description, length: { maximum: 140,
	   too_long: "%{count} characters is the maximum allowed" }
end
