class OrdersController < ApplicationController

def index
end
 
 def new
 	@item = FoodItem.find(params[:food_item_id])
 	@order = @item.orders.build
 end

 def create
 	@item = FoodItem.find(params[:food_item_id])
 	@order = @item.orders.build order_params
 end

 def order_params
 	params.require(:order).permit(:quantity)
 
	if @order.save
		flash[:success] = "Thank you for your order."
		redirect_to menu_path, flash: {success: "Thank you for your order."}
	else
		render 'new'
 	end	
 end
end
