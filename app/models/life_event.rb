class LifeEvent < ActiveRecord::Base

validates :title, presence:true
validates :year, presence:true

end
