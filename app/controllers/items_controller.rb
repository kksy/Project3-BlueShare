class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user_id = current_user.id
    @item.location = params[:location].to_i
    @item.loan_status = 'available'
    @item.save
    redirect_to new_item_image_path(item_id: @item.id)
  end


  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.location = params[:location].to_i
    @item.update(item_params)
    redirect_to '/user' 
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to '/user'
  end

  def show
    if Item.find_by(id: params[:id])
      @item = Item.find(params[:id])
      @owner = @item.user_id
      if !current_user.nil? && @owner == current_user.id
        @is_owner = true
      end

    else
      redirect_to '/'
    end
  end



  def item_params
    params.require(:item).permit(:title, :price, :loan_status)
  end

  
  def search
    @match = Item.all
    if @item.save
      redirect_to '/items', notice: 'items list'
    else
      render :new
    end
  end

end
