class LifeEvent < ActiveRecord::Base
  belongs_to :person

  validates_length_of :description, :maximum => 140
  validates :title, presence: true
  validates :year, presence: true, numericality: { only_integer: true }
  validates :description, presence: true
  def to_s
    name
  end

end
