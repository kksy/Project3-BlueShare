class PagesController < ApplicationController
  def home
    @items = Item.all

  end

  def about

  end

  def search
    # @item = params[:search_input]
    if !params[:search_input].empty?
      @query = params[:search_input]
      @result = Item.where("title LIKE ?", "%#{@query}%")
    else
      redirect_to '/'

    end

  end

end
