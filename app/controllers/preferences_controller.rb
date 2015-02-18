class PreferencesController < ApplicationController

    def index
    @preference = Preference.new

    #Lista de cozinhas
    @list_preference = Array.new
    list = Preference.all
    list.each do |p|
      @list_preference << p.preference_food
    end
    
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to @preference
    else
      render 'new'
    end
  end

  def show
    @preference = Preference.find(params[:id])
  end

  def preference_params
    params.require(:preference).permit(:preference_food)
  end

end
