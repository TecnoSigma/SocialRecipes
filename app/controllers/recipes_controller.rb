class RecipesController < ApplicationController
  
  #before_action :authenticate_user!, only: [:create, :new, :show]


  def new
    @recipe = Recipe.new

    #Lista de cozinhas
    @list_cuisine = Array.new
    list = Cuisine.all
    list.each do |c|
      @list_cuisine << c.name
    end

    #Lista de preferências de comida
    @list_preference = Array.new
    list = Preference.all
    list.each do |c|
      @list_preference << c.preference_food
    end

    #Lista de tipos de comida
    @list_type = Array.new
    list = Type.all
    list.each do |c|
      @list_type << c.type_food
    end

  end

  def create
    @recipe = Recipe.new(recipe_params)
    @cuisines = Cuisine.all
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
