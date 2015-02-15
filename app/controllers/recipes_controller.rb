class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render "new"
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name_recipe, :cuisine, :type_food, :preferences, :served_people, :time_preparation, :dificulty, :ingredients, :directions, :image)
  end

end
