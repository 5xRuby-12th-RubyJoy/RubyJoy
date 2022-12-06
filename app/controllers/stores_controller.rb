class StoresController < ApplicationController
  before_action :find_store, only: [ :update, :edit, :destroy, :show ]
  def index
    @store = Store.all
  end

  def new
    @store = Store.new
  end
  
  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to stores_path, notice: '成功新增商店！'
    else
      render :new
    end
  end

  def show

  end

  def edit
  end
  
  def update
    if @store.update(store_params)
      redirect_to stores_path, notice: '成功更新商店！'
    else
      render :edit
    end
  end

  def destroy
    @store.destroy

    redirect_to stores_path, alert: '商店已刪除'
  end


  private
  
  def store_params
    params.require(:store).permit(:title, :description)
  end 

  def find_store
    @store = Store.find_by!(id: params[:id])
  end

end
