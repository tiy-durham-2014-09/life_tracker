class WelcomeController < ApplicationController
  def index
    @people = Person.all
    @schools = School.all
    @life_events = LifeEvent.all
  end

  def show
  end
end
