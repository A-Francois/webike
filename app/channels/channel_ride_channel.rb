class ChannelRideChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    consumer.subscriptions.create({ channel: 'ChatroomChannel', id: '42' }, {
    #called when data is broadcast in the cable
    });
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
