class PagesController < ApplicationController
  def home
    # @items = Item.first.title
    # render json: @items
  end

  def about

  end
  
  def search

    @match = []
    for i in 0..Item.all.count 
 
      @match << Item.where("title LIKE ?", '%truck%').first
    end


    
  end

end


# <%= item.title %>
#   <%= item.image_path %>
#   <%= item.loan_status %>
#   <%= item.price %>
#   <%= item.user_id %>