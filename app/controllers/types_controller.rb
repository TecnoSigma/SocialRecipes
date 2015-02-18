class TypesController < ApplicationController
    def index
    @type = Type.new

    #Lista de cozinhas
    @list_type = Array.new
    list = Type.all
    list.each do |t|
      @list_type << t.type_food
    end
    
  end

  def create
    @type = Type.new(type_params)
    if @type.save
      redirect_to @type
    else
      render 'new'
    end
  end

  def show
    @type = Type.find(params[:id])
  end

  def type_params
    params.require(:type).permit(:type_food)
  end
end
