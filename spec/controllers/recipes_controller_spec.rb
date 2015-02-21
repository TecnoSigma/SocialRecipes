require 'rails_helper'

RSpec.describe RecipesController, :type => :controller do

  let(:recipe_created) {{ name_recipe: "Angu", cuisine: "Brasileira", type_food: "Principal", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo', image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1, favorite: false }}

  describe "#new" do 
    it "should render new" do 
      get :new  
      expect(response).to render_template(:new)
    end
  end

  describe "#create" do
    it "Should create a new recipe" do
      post :create , recipe: recipe_created
      expect(Recipe.count).to eq(1)
    end
  end

  describe "#show" do 
    it "Should list the recipe saved" do
      recipe = Recipe.create!(recipe_created)
      get :show, id: recipe.id
      expect(response).to have_http_status(:success)

      expect(assigns(:recipe)).to eq(recipe)

    end
  end

end
