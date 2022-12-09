class EventsController < ApplicationController
  before_action :find_id, only: %i[show edit update destroy]
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params) if current_user?
    if @event.save
      redirect_to events_path, notice: '活動建立成功!!'
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @event.update(event_params)
      redirect_to events_path, notice: '活動更新成功!!'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_path, notice: '刪除活動成功!!'
  end

  private

  def event_params
    params.require(:event).permit(:title, :subtitle, :description, :start_at, :end_at, :venue)
  end

  def find_id
    @event = Event.find_by(id: params[:id])
  end
end
