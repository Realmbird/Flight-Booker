class FlightsController < ApplicationController
  # added
  def index
    @flights = Flight.new
    if params[:flights]
      @flights = Flight.all
      # departure airports
      if params[:flights][:departure_airport]
        # changed from @flights.where(departing_id: params[:flights][:departure_airport])
        @flights = @flights.where(departing_id: params[:flights][:departure_airport])
      end
      #arrival airports
      if params[:flights][:arrival_airport]
        @flights = @flights.where(arrival_id: params[:flights][:arrival_airport])
      end
      # start
      if params[:flights][:start]
        @flights = @flights.where("DATE(start) = ?", params[:flights][:start])
      end
    else 
      @flights = Flight.all
    end
  end

  private 
  def flight_params
    # params.require(:flights).permit(:'start(1i)', :'start(2i)', :'start(3i)', :arrival_airport, :departure_airport, :passengers);
    params.require(:flights).permit(:start, :arrival_airport, :departure_airport, :passengers);
  end
end
