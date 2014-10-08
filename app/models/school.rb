class School < ActiveRecord::Base
  belongs_to :person
  has_many :comments, as: :commentable
  validates :beg_year, presence: true,
            numericality: { less_than_or_equal_to: :end_year }
end
