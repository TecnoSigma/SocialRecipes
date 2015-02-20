require 'rails_helper'

RSpec.describe ViewRecipesController, type: :controller do

  let(:recipe_created) {{ name_recipe: "Angu", cuisine: "Brasileira", type_food: "Principal", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo', image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1 }}

  describe "#show" do 
    it "Should list the recipe saved" do
      recipe = Recipe.create!(recipe_created)
      get :show, id: recipe.id
      expect(assigns(:recipes)).to eq [recipe]
    end
  end

end
