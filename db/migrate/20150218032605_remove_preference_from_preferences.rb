class RemovePreferenceFromPreferences < ActiveRecord::Migration
  def change
    remove_column :preferences, :preference, :string
  end
end
