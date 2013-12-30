class InventoriesController < ApplicationController
  def index
    @items = Inventory.all
  end
end
