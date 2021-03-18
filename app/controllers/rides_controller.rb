class RidesController < ApplicationController
  before_action :set_ride, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    if params[:user].present?
      @rides = Ride.where(user_id: params[:user])
    else
      @rides = Ride.all
    end
  end

  def all_my_rides
    @ride.user = current_user
    if params[:query].present?
      @rides = Ride.search_by_city_departure(params[:query])
    else
      @rides = Ride.all
    end
  end

  def show
    @participant = Participant.find_by(user: current_user, ride: @ride)
  end

  def new
    @ride = Ride.new
  end

  def edit
    @ride.assign_attributes(ride_edit_params)
    @ride.geocode_the_start_address
    @ride.geocode_the_end_address
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
    redirect_to rides_path, notice: 'Your ride was successfully deleted.'
  end

  private

  def set_ride
    @ride = Ride.find(params[:id])
  end

  def ride_params
    params.require(:ride).permit(:title, :city_departure, :city_arrival, :departure_date, :arrival_date, :ride_description, :photo, :user_id)
  end

  def ride_edit_params
    params.permit(:title, :city_departure, :city_arrival, :departure_date, :arrival_date, :ride_description, :photo, :user_id)
  end
end
