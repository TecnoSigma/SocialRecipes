class AddPreferenceToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :preference, :string
  end
end
