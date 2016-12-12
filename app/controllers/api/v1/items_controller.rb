module Api::V1
  class ItemsController < ApiController

  	before_action :set_item, only: [:show, :update, :destroy]

  	def index
    	@items = Item.all

    	render json: @items
  	end

  	def show
  		render json: @item
  	end

  	def create
  		@item = Item.new(item_params)

	  if @item.save
	    render json: @item, status: :created
	  else
	    render json: @item.errors, status: :unprocessable_entity
	  end
  	end

  	def update
  		if @item.update(item_params)
			render json: @item
		else
		    render json: @item.errors, status: :unprocessable_entity
		end
  	end

  	def destroy
  		@item.destroy
  	end

  	private
  		def set_item
  			@item = Item.find(params[:id])
  		end

  		def item_params
    		params.require(:item).permit(:menu_id, :name, :price)
  		end
    end
end