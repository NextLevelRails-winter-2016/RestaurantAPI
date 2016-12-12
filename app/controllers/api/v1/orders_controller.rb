module Api::V1
  class OrdersController < ApiController

  	before_action :set_order, only: [:show, :update, :destroy]

  	def index
    	@orders = Order.all

    	render json: @orders
  	end

  	def show
  		render json: @order
  	end

  	def create
  		@order = Order.new(order_params)

	  if @order.save
	    render json: @order, status: :created
	  else
	    render json: @order.errors, status: :unprocessable_entity
	  end
  	end

  	def update
  		if @order.update(order_params)
			render json: @order
		else
		    render json: @order.errors, status: :unprocessable_entity
		end
  	end

  	def destroy
  		@order.destroy
  	end

  	private
  		def set_order
  			@order = Order.find(params[:id])
  		end

  		def order_params
    		params.require(:order).permit(:item_id, :quantity)
  		end
    end
end
