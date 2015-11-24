class ItemsController < ApplicationController

  def index
    @items = Item.all

  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to '/items'
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to '/items'
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to '/items'
  end

  def item_params
    params.require(:item).permit(:title).merge(user_id: current_user.id)
  end

  def search
    @match = Item.all
  end


end
