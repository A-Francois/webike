class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.new(partcipant_params)
    if @participant.save
      redirect_to notice: 'You participate to this ride now !'
    else
      render :new
    end
  end

  def destroy
    @participant.destroy
    redirect_to notice: 'Your participation has been removed from the ride !'
  end
end
