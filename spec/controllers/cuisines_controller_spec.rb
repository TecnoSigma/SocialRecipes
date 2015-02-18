require 'rails_helper'

RSpec.describe CuisinesController, type: :controller do

  let(:cuisinecreated) {{id: 1, name: "Brasileira", created_at: Time.now, updated_at: Time.now}}

  describe "Should access the admin panel" do
    it "Should create a new array of the list_cuisine" do
      list_cuisine = Array.new
      expect(list_cuisine.count).to eq(0)
    end

    it "Should create a new cuisine" do
      post :create, :cuisine => cuisinecreated
      expect(Cuisine.count).to eq(1)
    end
  end

  describe "#create" do
    it "Should create a new cuisine" do
      post :create, :cuisine => cuisinecreated
      expect(Cuisine.count).to eq(1)
    end
  end

  describe "#show" do 
    it "Should list the cuisine saved" do
      @cuisine = Cuisine.create!(cuisinecreated)
      get :show, id: @cuisine.id
      expect(response).to have_http_status(:success)
    end
  end

end
