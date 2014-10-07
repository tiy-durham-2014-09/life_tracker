class School < ActiveRecord::Base

validates :name, presence:true
validates :beginning_year, presence:true
validates :ending_year, presence:true

end
