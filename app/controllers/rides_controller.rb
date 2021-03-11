class RidesController < ApplicationController
  before_action :set_ride, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @rides = Ride.all
  end

  def all_my_rides
    @ride.user = current_user
    if params[:query].present?
      @rides = Ride.search_by_city_departure(params[:query])
    else
      @rides = Ride.all
    end

    @markers = @rides.geocoded.map do |ride|
      {
        lat: ride.latitude,
        lng: ride.longitude
      }
    end
  end

  def show
    @rides = Ride.all
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
    @ride.title = ride_params[:title].last
    @ride.city_departure = ride_params[:city_departure].last
    @ride.city_arrival = ride_params[:city_arrival].last
    @ride.departure_date = ride_params[:departure_date].last
    @ride.arrival_date = ride_params[:arrival_date].last
    @ride.description = ride_params[:description].last
    if @ride.save
      redirect_to @ride, notice: 'Your ride was successfully created.'
    else
      render :new
    end
  end

  def update
    if @ride.update(ride_params)
      redirect_to @ride, notice: 'Your ride was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @ride.destroy
    redirect_to account_rides_path, notice: 'Your ride was successfully deleted.'
  end

  private

  def set_ride
    @ride = Ride.find(params[:id])
  end

  def ride_params
    params.require(:ride).permit(:title, :city_departure, :city_arrival, :departure_date, :arrival_date, :description, :photo, :user_id)
  end
end
