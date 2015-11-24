class PagesController < ApplicationController
  def home
    @items = Item.all

  end

  def about

  end
  
  def search
    @search = Item.search(params[:q])
    @products = @search.result
    
  end

end

# <%= item.title %>
#   <%= item.image_path %>
#   <%= item.loan_status %>
#   <%= item.price %>
#   <%= item.user_id %>


# <%= search_form_for @search do |f| %>

#   <div class="field">
#     <%= f.label :title_cont, "Name contains"%>
#      <%= f.text_field :title_cont %>

#      </div>
#   <div class="actions"><%= f.submit "search" %> </div>


