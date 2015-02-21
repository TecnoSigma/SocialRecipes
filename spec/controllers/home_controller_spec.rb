require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  
  let(:old_recipe)     {{ name_recipe: "Angu_1", cuisine: "Brasileira", type_food: "Principal", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo',  image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1, favorite: true}}
  let(:recent_recipe)  {{ name_recipe: "Angu_2", cuisine: "Brasileira", type_food: "Principal", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo',  image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1, favorite: false}}

  describe "Should view last 20 recipes" do

    it "Should not contain old recipes" do
      old = Recipe.create(old_recipe)
      20.times do 
        Recipe.create(recent_recipe)
      end
      get :index
      last_recipes = assigns(:last_recipes)
      expect(last_recipes).not_to include(old) 
    end

    it "Should contain exactly 20 recipes" do
      30.times do 
        Recipe.create(recent_recipe)
      end
      get :index
      last_recipes = assigns(:last_recipes)
      expect(last_recipes.length).to eq(20) 
    end

  end

end
