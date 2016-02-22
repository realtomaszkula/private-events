class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:success] = "Event created!"
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @event = Event.find(:params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:description, :host_id, :date)
  end
end
