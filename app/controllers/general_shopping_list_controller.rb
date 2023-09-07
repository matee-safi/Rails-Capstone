class GeneralShoppingListController < ApplicationController
  def index
    @foods = CartItem.where(user: current_user)
  end

  def generate_shopping_list
    @recipe = Recipe.find(params[:recipe_id])
    @recipe.recipe_foods.each do |recipe_food|
      CartItem.create(
        name: recipe_food.food.name,
        measurement_unit: recipe_food.food.measurement_unit,
        price: recipe_food.food.price,
        quantity: recipe_food.quantity,
        recipe: @recipe,
        user: current_user
      )
    end
    redirect_to general_shopping_list_index_path, notice: 'Shopping list generated successfully.'
  end
end
