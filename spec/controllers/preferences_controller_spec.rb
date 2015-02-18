require 'rails_helper'

RSpec.describe PreferencesController, type: :controller do

  let(:preferencescreated) {{id: 1, preference_food: "Vegetariana", created_at: Time.now, updated_at: Time.now}}

  describe "Should access the admin panel" do
    it "Should create a new array of the list_preference" do
      list_preference = Array.new
      expect(list_preference.count).to eq(0)
    end

    it "Should create a new preference" do
      post :create, :preference => preferencescreated
      expect(Preference.count).to eq(1)
    end
  end

  describe "#create" do
    it "Should create a new preference" do
      post :create, :preference => preferencescreated
      expect(Preference.count).to eq(1)
    end
  end

  describe "#show" do 
    it "Should list the preference saved" do
      @preference = Preference.create!(preferencescreated)
      get :show, id: @preference.id
      expect(response).to have_http_status(:success)
    end
  end

end
