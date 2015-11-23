class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to '/items'
  end

  def destroy

  end

  def item_params
    params.require(:item).permit(params[:item].keys)
  end

end
