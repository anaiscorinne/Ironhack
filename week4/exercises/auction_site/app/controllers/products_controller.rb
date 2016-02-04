class ProductsController < ApplicationController

	def index
		if params[:user_id]
			@user = User.find_by(id: params[:user_id])
			@products = @user.products.all
		else
			@products = Product.all
		end
	end

	def show
		@user = User.find_by(id: params[:user_id])
		@product = @user.products.find_by(id: params[:id])
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
			redirect_to user_products_path(@user)
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
		params.require(:product).permit(:title, :description, :amount, :deadline)
	end
end
