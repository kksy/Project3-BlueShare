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

  def show
    if Item.find_by(id: params[:id])
      @item = Item.find(params[:id])
    else
      redirect_to '/'
    end
  end

  def destroy
  end


  def item_params
    params.require(:item).permit(:title).merge(user_id: current_user.id)
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
