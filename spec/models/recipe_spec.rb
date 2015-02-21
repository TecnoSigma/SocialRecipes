require 'rails_helper'

RSpec.describe Recipe, type: :model do
  
describe "validations" do

  it "save a recipe if mandatory fields are present" do
    #r = Recipe.new({ :name, :ingredients, :name_recipe, :cuisine, :type_food, :preferences, :ingredients, :directions })
    #expect(r.save!).not_to raise error
  end

  it "xxx" do
    #should validate_presence_of(:name)
    #it { should validate_presence_of(:name) }
  end

#  it "raise error if name is empty" do
#    r= REcipe.new({ingredients, bla bla bla})
#    expect(r.save!).to raise error
#  end

end

end
