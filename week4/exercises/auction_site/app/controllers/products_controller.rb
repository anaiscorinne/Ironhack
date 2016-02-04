class ProductsController < ApplicationController

	def index
		@user = User.find_by(id: params[:user_id])
		@products = Product.all
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
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.new(product_params)
		if @product.save
			link_to user_products_path
		else
			render 'new'
		end
	end

	def new
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.new
	end

	def destroy
	end

	private #this says only the three arguments are allowed!
	def product_params
		params.require(:products).permit(:title, :description, :amount)
	end
end
