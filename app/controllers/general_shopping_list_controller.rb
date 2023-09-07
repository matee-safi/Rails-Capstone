class GeneralShoppingListController < ApplicationController
  def index;
    @general_shopping_lists = Recipe.includes(:food).all
  end
end
