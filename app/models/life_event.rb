class LifeEvent < ActiveRecord::Base
belongs_to :person
validates :title, presence: true
validates :title, format: { with: /\A[a-zA-Z\s]+\z/,
    message: "only allows letters" }
validates :year, presence: true
validates :description, length: { maximum: 140 }, allow_blank: true

def select_year(date, options = {}, html_options = {})
  DateTimeSelector.new(date, options, html_options).select_year
end

end