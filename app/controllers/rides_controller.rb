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

  def geocode_the_start_address
    coords = Geocoder.coordinates(self.start)
    self.start_lat = coords[0]
    self.start_long = coords[1]
  end

  def geocode_the_arrival_address
    coords = Geocoder.coordinates(self.start)
    self.arrival_lat = coords[0]
    self.arrival_long = coords[1]
  end

  def create
    @ride = Ride.new(ride_params)
    @ride.user = current_user
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
