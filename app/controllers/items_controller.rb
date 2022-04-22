class ItemsController < ApplicationController
  def index
    @items=Item.all
  end

  def new
    @item = Item.new
  end

  def create
    item = Item.create(params.require(:item).permit(:name, :price,:description))
    redirect_to items_path
  end

  def edit
  end
end
