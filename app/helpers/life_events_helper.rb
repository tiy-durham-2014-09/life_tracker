module LifeEventsHelper
def select_year(date, options = {}, html_options = {})
  DateTimeSelector.new(date, options, html_options).select_year
end
end
