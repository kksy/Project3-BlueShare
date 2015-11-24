class Api::ItemsController < ApplicationController

  def index
    # get params from /dishes?page=1
    # to make page iterate by 1, I made it so that at page=1, the offset is 0, but succeeding page numbers will have an offset multiplied by the limit(number of more items to be loaded)
    @limit = 4
    if params[:page].nil?
      @items = Item.all
    else
      @items = Item.limit(@limit).offset(( (params[:page].to_i - 1) * @limit ))
    end
    render json: @items
  end

  def create
    
  end

  def destroy
  end
end
