class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.string :type_food

      t.timestamps null: false
    end
  end
end
