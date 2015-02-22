class PainelUserController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @recipes_user = Recipe.all.where(owner: current_user.id)
  end

  def edit_recipe
    @id = params[:id]
    #@recipe_user = Recipe.find(@id)
  end

end
