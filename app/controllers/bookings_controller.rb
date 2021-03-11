class BookingsController < ApplicationController
  
  def index
    @bookings = Booking.where({ participant: current_user })
  end

  def show
  end

  def create
    booking = Booking.new
    booking.hotel_id = params[:hotel]
    booking.booking_start = params[:date]
    booking.booking_end = booking.booking_start+1 
    booking.participant_id = current_user.id
    booking.save!
    redirect_to_participant_path

  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to_participant_path

  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :date, :hotel)
    end
  end
