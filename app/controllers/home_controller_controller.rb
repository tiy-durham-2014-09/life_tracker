class HomeControllerController < ApplicationController
  def index
    @schools = School.all
    @people = Person.all
    @life_events = LifeEvent.all
  end
end
