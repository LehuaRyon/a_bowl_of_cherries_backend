class Api::V1::MonthsController < ApplicationController

  def index
    months = Month.all
    render json: months
  end

  def show
    month = Month.find(params[:id])
    render json: month
  end

end
