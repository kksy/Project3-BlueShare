class PagesController < ApplicationController
  def home
    @items = Item.all

  end

  def about

  end

  def search
    # @item = params[:search_input]
    if params[:search_input].nil? || params[:search_input].empty?
      @query = params[:search_input]
      @result = Item.where("title LIKE ?", "%#{@query}%")
      # Item.where("location LIKE ?", "%#{@query}%")
      # @cover_image = ItemImage.find_by(item_id: )
    else
      redirect_to '/'
    end

  end

end
