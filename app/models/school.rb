class School < ActiveRecord::Base
validates :name, presence: true
validates :beginning_year, presence: true
validates :ending_year, presence: true
validates :name, format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
validates_numericality_of :ending_year , :greater_than_or_equal_to => :beginning_year
end
