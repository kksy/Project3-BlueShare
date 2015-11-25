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

var template = $([
        "<div class='small-4 columns'>image here</div>",
        "<div class='small-5 columns'>",
        " <a href='#'><h5>Title of the ad</h5></a>",
        "   <div class='small-3 columns'>",
        "    <p><%= item.title %></p>",
        "    </div>",
        "   <div class='small-3 columns'>",
        "   <h5><%= item.price %></h5>",
        "   <p><%= item.location %></p>",
        "   </div>",
        "<hr>"
      ].join("\n"));


      <%= %>
    <div class='small-4 columns'>image here</div>
    <div class='small-5 columns'>
     <a href='#'><h5>Title of the ad</h5></a>
       <div class='small-3 columns'>
        <p><%= item.title %></p>
        </div>
       <div class='small-3 columns'>
       <h5><%= item.price %></h5>
       <p><%= item.location %></p>
       </div>
    <hr>