class AddPreferenceFoodToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :preference_food, :string
  end
end
