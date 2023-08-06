class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  private 
  def flight_params
    params.require(:flight).permit()
  end
end
