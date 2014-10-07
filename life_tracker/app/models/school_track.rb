class SchoolTrack < ActiveRecord::Base
	
  validate :school_name, :year_school_began, :year_school_ended, presence: true
  validate :year_school_began, :year_school_ended, length: { is: 4 }
  validate :year_school_ended_cannot_be_less_than_year_school_began

  def year_school_ended_cannot_be_less_than_year_school_began
  	if year_school_ended < year_school_began
  	  errors.add(:year_school_ended, "cannot be before it started.")
  	end
  end

end
