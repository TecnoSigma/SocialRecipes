require 'rails_helper'

RSpec.describe CuisinesController, type: :controller do

  let(:cuisine_created) {{ name: "Brasileira" }}

  describe "#new" do 
    it "should render new" do 
      get :new  
      expect(response).to render_template(:new)
    end
  end

  describe "#create" do
    it "Should create a new cuisine" do
      post :create, cuisine: cuisine_created
      expect(Cuisine.count).to eq(1)
    end
  end

  describe "#show" do 
    it "Should list the cuisine saved" do
      cuisine = Cuisine.create!(cuisine_created)
      get :show, id: cuisine.id
      expect(response).to have_http_status(:success)

      expect(assigns(:cuisine)).to eq(cuisine)
      
    end
  end

end
