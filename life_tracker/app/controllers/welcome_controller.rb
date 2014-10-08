class WelcomeController < ApplicationController
  def index
    @schools = School.all
    @life_events = LifeEvent.all
    @people = Person.all
  end
end
