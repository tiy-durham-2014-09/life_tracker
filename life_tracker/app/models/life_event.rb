class LifeEvent < ActiveRecord::Base
   belongs_to :people
   def to_s
     name
   end
end
