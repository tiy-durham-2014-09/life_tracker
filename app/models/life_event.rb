class LifeEvent < ActiveRecord::Base
  belongs_to :person
  has_many :comments, as: :commentable
  validates :desc, presence: true,
            length: { maximum: 140 }
end
