class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new
    @ride = Ride.find(params[:ride_id])
    @participant.ride = @ride
    @participant.user = current_user
    if @participant.save
      redirect_to ride_path(@ride), notice: 'You participate to this ride now !'
    else
      render :new
    end
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to bookings_path, notice: 'Your participation has been removed from the ride !'
  end
end
