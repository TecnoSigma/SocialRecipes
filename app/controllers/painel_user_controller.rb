class PainelUserController < ApplicationController
  
  before_action :authenticate_user!

  def index
    @recipes_user = Recipe.all.where(owner: current_user.id)
  end

end
