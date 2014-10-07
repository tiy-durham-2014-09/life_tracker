class LifeEventsController < ApplicationController
  def new
  end

  def index
    @life_events = LifeEvent.all
  end
  def create
    @life_event = LifeEvent.new

    @life_event.save
    redirect_to @life_event
  end
  def show
    @life_event = LifeEvent(params[:id])
  end
  private
  def article_params
    params.require(:life_event).permit(:title, :year)
  end

end
