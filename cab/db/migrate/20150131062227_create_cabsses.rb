class CreateCabsses < ActiveRecord::Migration
  def change
    create_table :cabsses do |t|
      t.string :cab_type
      t.string :cab_no
      t.integer :rate
      t.boolean :insure

      t.timestamps null: false
    end
  end
end
