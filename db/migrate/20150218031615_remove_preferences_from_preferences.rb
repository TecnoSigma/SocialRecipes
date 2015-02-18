class RemovePreferencesFromPreferences < ActiveRecord::Migration
  def change
    remove_column :preferences, :preferences, :string
  end
end
