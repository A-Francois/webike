class BookingsController < ApplicationController

  def index
    @bookings = []
    #current_user.participants.each { |participant| participant.bookings.each { |booking| @bookings << booking } }
    current_user.participants.each { |participant| @bookings << participant.bookings.first if participant.bookings.first != nil }
    @rides = current_user.participant_rides
  end

  def show
    @booking = Booking.find(params[:id])
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
    redirect_to bookings_path, notice: 'Your booking has been removed !'
  end

  private

  def booking_params
    params.require(:booking).permit(:arrival_date, :date, :hotel)
    end
  end
