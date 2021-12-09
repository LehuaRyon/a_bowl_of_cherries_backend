class Api::V1::EventsController < ApplicationController

  def index
    @events = Event.all
    render json: @events
  end

  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  def create
    event = logged_in_user.events.create!(event_params)
    render json: event
  end

  def update
    event = Event.find(params[:id])
    user = User.find(event.user_id)
    if user.id === logged_in_user.id
      event.update!(event_params)
      render json: event
    else
      render json: {errors: event.errors.messages}, status: :unprocessable_entity
    end
  end

  def destroy
    event = Event.find(params[:id])
    user = User.find(event.user_id)
    if user.id === logged_in_user.id
      event.destroy
      render json: {message: "Event '#{event.name}' successfully deleted!"}
    else
      render json: {errors: event.errors.messages}, status: :unprocessable_entity
    end
  end

  private

    def event_params
      params.require(:event).permit(:name, :date, :location, :description, :website, :month_id)
    end
    
end