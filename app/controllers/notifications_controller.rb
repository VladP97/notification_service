class NotificationsController < ApplicationController
  protect_from_forgery with: :null_session

  def orders_notifications
    ActionCable.server.broadcast("orders_channel_#{params[:market]}", params[:data])
    head :no_content
  end
end
