class LastRecipesController < ApplicationController
  def index
    @last_recipes = Recipe.order(created_at: :desc).limit(20)
  end
end
