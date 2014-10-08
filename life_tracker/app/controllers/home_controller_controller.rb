class HomeControllerController < ApplicationController
  def index
    @people = Person.all
  end

end
