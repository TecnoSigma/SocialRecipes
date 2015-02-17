class RemoveCuisineFromCuisine < ActiveRecord::Migration
  def change
    remove_column :cuisines, :cuisine, :string
  end
end
