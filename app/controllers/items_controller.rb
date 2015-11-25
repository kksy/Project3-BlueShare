class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)
    # @item.postcode = params[:postcode]
    # @item.title = params[:title]
    if @item.save
      redirect_to '/items'
    else
      render :new
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end


  def search
    @match = Item.all
    if @item.save
      redirect_to '/items', notice: 'items list'
    else
      render :new
    end
  end




  # def item_params
  #   params.require(:item).permit(params[:item].keys)
  # end

end
