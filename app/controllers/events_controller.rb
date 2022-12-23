class EventsController < ApplicationController
  before_action :find_event, only: %i[show edit update destroy index add_gift]
  before_action :find_product, only: [:add_gift, :remove_gift]

  def index
    @events = current_user.events.all
  end

  def add_gift
    if @event.products.include?(@product)
      @event.products.delete(@product)
      render json: { status: "deleted" }
    else
      @event.products << @product
      render json: { status: "created" }
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params) if current_user?
    if @event.save
      redirect_to events_path, notice: "活動建立成功!"
    else
      render :new
    end
  end

  def show
    @event_products = @event.products.all
    @event=Event.find(params[:id]) 
    @product_paid= Order.where({event_id:params[:id],state:"paid"}).pluck(:product_id)
   
  end

  def edit; end

  def update
    if @event.update(event_params)
      redirect_to events_path, notice: "活動更新成功!"
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: "成功刪除活動!"
  end

  private

  def event_params
    params.require(:event).permit(:title, :subtitle, :description, :start_at, :end_at, :venue, :avatar, :address, :phone, :receiver)
  end

  def find_event
    @event = Event.find_by(id: params[:id])
  end

  def find_product
    @product = Product.find(params[:product_id])
  end
end
