require 'rails_helper'

RSpec.describe ViewRecipesCategoriesController, type: :controller do

  let(:recipe_1)  {{ name_recipe: "Angu_1", cuisine: "Brasileira", type_food: "Principal", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo',  image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1}}
  let(:recipe_2)  {{ name_recipe: "Angu_2", cuisine: "Angolana", type_food: "Sobremesa", preferences: "Calórica", served_people: 5, time_preparation: "00:30", dificulty: "Fácil", ingredients: "Fubá, Água e Sal", directions: 'Misturar tudo',  image_file_name: "angu.jpg", image_content_type: "image/jpg", image_file_size: 1}}

  before do
    @r_1 = Recipe.create!(recipe_1)      
    @r_2 = Recipe.create!(recipe_2)  
  end

  describe "Organization of the recipes" do
    it "Should organize by type of food" do
      expect(Recipe.order('type_food asc') == [@r_1, @r_2])
    end

    it "Should organize by type of cuisine" do
      expect(Recipe.order('cuisine asc') == [@r_1, @r_2])
    end

    it "Should organize by type of preference" do
      expect(Recipe.order('preferences asc') == [@r_1, @r_2])
    end
  end

end
