class School < ActiveRecord::Base
  belongs_to :person

  validates :name, presence:true

  validates :beginning_year, numericality: {allow_nil:true}
  validates :ending_year, numericality: {greater_than_or_equal_to: :beginning_year, allow_nil: true}
end
