class InventoriesController < ApplicationController
  def index
    @items = Inventory.all
  end

  def new
    @item = Inventory.new
  end

  def create
    @item = Inventory.new(item_params)
    if @item.save
      redirect_to @item, notice: "Item was successfully saved"
    else
      render action: 'new'
    end
  end

  def show
    @item = Inventory.find(params[:id])
  end

  private
  def item_params
    params.require(:inventory).permit(:title, :description, :quantity)
  end

end
