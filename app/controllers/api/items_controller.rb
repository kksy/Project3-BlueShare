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

    # @items.each do |item|
    #   i = item["location"]
    #   r = HTTParty.get('http:/v0.postcodeapi.com.au/suburbs/i.json')
    #   @latitude = r.first["latitude"]
    #   # @latitude = r[0]["latitude"]
    #   @longitude = r.first["longitude"]
    #   # raise 'stop'
    # end

    render json: @items, methods: :location_details
  end

  def create

  end

  def destroy
  end

  def markers

  #   @items.each do |item|
  #     i = item["location"]
  #     r = HTTParty.get('http:/v0.postcodeapi.com.au/suburbs/i.json')
  #     @latitude = r.first["latitude"]
  #     # @latitude = r[0]["latitude"]
  #     @longitude = r.first["longitude"]
  #     # raise 'stop'
  #   end
  end
end
