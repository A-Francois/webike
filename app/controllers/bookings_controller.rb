class BookingsController < ApplicationController

  def index
    @bookings = []
    current_user.participants.each { |participant| participant.bookings.each { |booking| @bookings << booking } }
    @rides = current_user.rides
  end

  def show
  end

  def create
    booking = Booking.new
    booking.hotel_id = params[:hotel]
    booking.booking_start = params[:date]
    booking.booking_end = booking.booking_start+1
    participant = Participant.find(params[:participant_id])

    booking.participant = participant
    redirect_to booking_path(booking) if booking.save
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
