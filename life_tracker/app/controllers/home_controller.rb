class HomeController < ApplicationController
  def index
    @schools = School.all
    @life_events = LifeEvent.all
    @person = Person.all
  end

end
