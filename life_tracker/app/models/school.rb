class School < ActiveRecord::Base
   belongs_to :person
   def to_s
     name
   end
end
