class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name_recipe
      t.string :cuisine
      t.string :type_food
      t.string :preferences
      t.integer :served_people
      t.time :time_preparation
      t.string :dificulty
      t.text :ingredients
      t.text :directions

      t.timestamps null: false
    end
  end
end
