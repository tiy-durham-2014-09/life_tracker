class WelcomeController < ApplicationController
  def index
    @schools = School.all
    @life_events = LifeEvent.all
  end
end
