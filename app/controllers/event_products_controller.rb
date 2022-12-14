class EventProductsController < ApplicationController
  before_action :find_event, only: [:destroy]

  def destroy
    @gift = @event.event_products.find_by(product_id: params[:id])
    @gift.destroy
    redirect_to event_path(@event), notice: "成功移除禮物"
  end

  def find_event
    @event = Event.find_by(id: params[:event_id])
  end
end
