class ViewRecipesController < ApplicationController
  
  def show
    @recipes = Recipe.all
  end

end
