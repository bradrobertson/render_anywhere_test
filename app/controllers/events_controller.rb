class EventsController < ApplicationController

  def show
    @event = Event.new

    render json: @event
  end
end
