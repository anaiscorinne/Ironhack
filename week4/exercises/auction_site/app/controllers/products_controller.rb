class ProductsController < ApplicationController

	def index
		@user = User.find_by(id: params[:user_id])
		@products = @user.products.all
	end

	def show
		@product = User.products.find_by(id: params[:id])
		if @product
			render 'show'
		else
			render 'product_not_found'
		end
	end

	def create
	end

	def destroy
	end

end
