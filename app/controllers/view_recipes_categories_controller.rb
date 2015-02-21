class ViewRecipesCategoriesController < ApplicationController

  def type_food
    @view_type_food = Recipe.order(type_food: :asc)
  end

  def type_preference
    @view_type_preference = Recipe.order(preferences: :asc)
  end

  def type_cuisine
    @view_type_cuisine = Recipe.order(cuisine: :asc)
  end

end
