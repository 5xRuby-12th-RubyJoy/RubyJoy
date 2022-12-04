class ProductsController < ApplicationController

    def index
        
    end
    def new
        @product=Product.new
    end
    def create
        @product=Product.new(product_params)
        if @product.save
            redirect_to products_path, notice: "成功"
        else
            render :new
        end
    end
    def show
        @product=Product.find_by(id: params[:id])
    end
    
    def edit
        @product=Product.find_by(id: params[:id])
    end
    
    def destroy
        @product.destroy
        redirect_to products_path, notice: "已刪除"
    end

    def update
        @product=Product.find_by(id: params[:id])
        
        if @product.update(product_params)
            redirect_to products_path, notice: "成功"
        else
            render :edit
        end
    end

    private
    
    def product_params
        params.require(:product).permit(:name,:description,:price,:stock)
    end

end
