class SandwichViewsController < ApplicationController
	before_action :authenticate_user!, only: [ "show" ]

	def index
		@sandwiches = Sandwich.all 
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = @sandwich.ingredients.all
		@all_ingredients = Ingredient.all
	end

end
