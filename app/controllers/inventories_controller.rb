class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def show
    @inventory = Inventory.find_by :id => params[:id]
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new inventory_params
    @inventory.user_id = @current_user.id
    if @inventory.save
      redirect_to @inventory
    else
      render :new
    end
  end

  def edit
    @inventory = Inventory.find_by :id => params[:id]
  end

  def update
    @inventory = Inventory.find_by :id => params[:id]
    @inventory.user_id = @current_user.id
    if @inventory.update inventory_params
      redirect_to @inventory
    else
      render :edit
    end
  end

  private
  def inventory_params
    params.require(:inventory).permit(:code, :product_id, :inventory_date, :price, :quantity)
  end
end
