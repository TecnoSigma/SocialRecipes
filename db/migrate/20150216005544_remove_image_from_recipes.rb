class RemoveImageFromRecipes < ActiveRecord::Migration
  def change
    remove_column :recipes, :image, :string
  end
end
