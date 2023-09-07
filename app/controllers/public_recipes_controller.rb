class PublicRecipesController < ApplicationController
  def index
    @public_recipes = Recipe.includes(:user).where(public: true)
    @recipe_foods = RecipeFood.includes(:food).where(recipe_id: @public_recipes.map(&:id))
  end
end
