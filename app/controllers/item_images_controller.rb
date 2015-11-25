class ItemImagesController < ApplicationController

	def new
		@item_image = ItemImage.new
	end

	def create
		item_image = ItemImage.new(item_image_params)
		item_image.item_id = params[:item_id].to_i
		item_image.user_id = current_user.id
		item_image.save
		redirect_to '/user'
	end

	def item_image_params
		params.require(:item_image).permit(:image_path)
	end

end