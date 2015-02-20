require 'rails_helper'

RSpec.describe PreferencesController, type: :controller do

  let(:preferences_created) {{ preference_food: "Vegetariana" }}

  describe "#create" do
    it "Should create a new preference" do
      post :create, preference: preferences_created
      expect(Preference.count).to eq(1)
    end
  end

  describe "#show" do 
    it "Should list the preference saved" do
      preference = Preference.create!(preferences_created)
      get :show, id: preference.id
      expect(response).to have_http_status(:success)

      expect(assigns(:preference)).to eq(preference)
    end
  end

end
