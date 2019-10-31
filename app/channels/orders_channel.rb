class OrderChannel < ApplicationCable::Channel
  def subscribed
    stream_from "order_channel_#{params[:market]}"
  end
end