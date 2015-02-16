require 'rails_helper'

RSpec.describe ViewRecipesController, type: :controller do

  let(:recipecreated) {{id: 1, name_recipe: "Angu", cuisine: "Brasileira", type_food: "Principal", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo', created_at: Time.now, updated_at: Time.now, image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1, image_updated_at: Time.now}}

  describe "#show" do 
    it "Should list the recipe saved" do
      @recipe = Recipe.create!(recipecreated)
      get :show, id: @recipe.id
      expect(response).to have_http_status(:success)
    end
  end

end
