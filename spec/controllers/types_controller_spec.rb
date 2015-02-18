require 'rails_helper'

RSpec.describe TypesController, type: :controller do

  let(:typescreated) {{id: 1, type_food: "Entrada", created_at: Time.now, updated_at: Time.now}}

  describe "Should access the admin panel" do
    it "Should create a new array of the list_type" do
      list_type = Array.new
      expect(list_type.count).to eq(0)
    end

    it "Should create a new type" do
      post :create, :type => typescreated
      expect(Type.count).to eq(1)
    end
  end

  describe "#create" do
    it "Should create a new type" do
      post :create, :type => typescreated
      expect(Type.count).to eq(1)
    end
  end

  describe "#show" do 
    it "Should list the type saved" do
      @type = Type.create!(typescreated)
      get :show, id: @type.id
      expect(response).to have_http_status(:success)
    end
  end

end
