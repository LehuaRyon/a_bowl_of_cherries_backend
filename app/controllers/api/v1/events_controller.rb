class Api::V1::EventsController < ApplicationController
  # protect_from_forgery with: :null_session
  # before_action :set_user, only: [:create, :delete]
  before_action :set_user, only: [:delete]
  # before_action :set_event, only: [:show, :update, :destroy]

  # GET /events
  def index
    @events = Event.all

    render json: @events
  end

  # GET /events/1
  def show
    @event = Event.find(params[:id])
    render json: @event
  end

  # POST /events
  def create
    # @event = Event.new(event_params)

    # if @event.save
    #   render json: @event, status: :created, location: @event
    # else
    #   render json: @event.errors, status: :unprocessable_entity
    # end

    event = logged_in_user.events.create!(event_params)
    # with ! it will throw error, active record, instead of being nil
    # event = logged_in_user.events.create(event_params)
    render json: event

    # if event.valid?
    #   render json: event
    # else
    #   render json: {errors: event.errors.full_messages.to_sentence}, status: :unprocessable_entity
    # end
  end

  # PATCH/PUT /events/1
  # def update
  #   if @event.update!(event_params)
  #     render json: @event
  #   else
  #     render json: @event.errors, status: :unprocessable_entity
  #   end

    # if @event.update!(event_params)
    # render json: @event
  # end

  def destroy
    event = Event.find(params[:id])
    user = User.find(event.user_id)
    # month = Month.find(event.month_id)
    if user.id === logged_in_user.id
      event.destroy
      render json: {message: "Event '#{event.name}' successfully deleted!"}
    else
      # render json: event, status: :unprocessable_entity
      render json: {error: event.errors.messages}, status: :unprocessable_entity
    end

    # if @event.destroy
    #   # render json: {message: "Event '#{@event.name}' successfully deleted!"}
    #   head :no_content
    # else
    #   # render json: @month.errors, status: :unprocessable_entity"
    #   render json: {error: @event.errors.messages}, status: :unprocessable_entity
    # end
  end

  private
    def set_user
      @user = User.find(params[:user_id])
    end
    
    # def set_event
    #   @event = Event.find(params[:id])
    # end

    # Only allow a list of trusted parameters through.
    # def event_params
    #   params.require(:event).permit(:name, :date, :location, :image_url, :description, :month_id)
    # end
    def event_params
      # params.permit(:name, :date, :location, :description, :website, :month_id)
      params.require(:event).permit(:name, :date, :location, :description, :website, :month_id)
    end
end