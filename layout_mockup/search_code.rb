@search = Item.search(params[:q])
    @products = @search.result

<%= search_form_for @search do |f| %>

  <div class="field">
    <%= f.label :title_cont, "Name contains"%>
     <%= f.text_field :title_cont %>

     </div>
  <div class="actions"><%= f.submit "search" %> </div>
<% end %>

# <%= item.title %>
#   <%= item.image_path %>
#   <%= item.loan_status %>
#   <%= item.price %>
#   <%= item.user_id %>