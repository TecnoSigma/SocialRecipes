require 'rails_helper'

RSpec.describe PainelAdmController, type: :controller do

  let(:cuisinecreated) {{id: 1, name: "Brasileira", created_at: Time.now, updated_at: Time.now}}

  describe "#show" do 
    it "Should list the cuisine saved" do
      @cuisine = Cuisine.create!(cuisinecreated)
      get :show, id: @cuisine.id
      expect(response).to have_http_status(:success)
    end
  end

end
