class SchoolsController < ApplicationController
def new
end

def index
  @schools = School.all
end
def create
  @schools = School.new

  @school.save
  redirect_to @school
end

def show
  @school = School(params[:id])
end

private
def article_params
  params.require(:life_event).permit(:title, :year)
end
end
