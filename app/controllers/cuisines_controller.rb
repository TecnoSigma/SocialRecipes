class CuisinesController < ApplicationController
  
  def index
    @cuisine = Cuisine.new

    #Lista de cozinhas
    @list_cuisine = Array.new
    list = Cuisine.all
    list.each do |c|
      @list_cuisine << c.name
    end
    
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to @cuisine
    else
      render 'new'
    end
  end

  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def cuisine_params
    params.require(:cuisine).permit(:name)
  end

end