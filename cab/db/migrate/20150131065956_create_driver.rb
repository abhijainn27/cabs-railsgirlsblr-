class CreateDriver < ActiveRecord::Migration
  def change
  	 create_table :drivers do |t|
     	t.string :driver_name
     	t.string :license_no
     	t.integer :experience_in_years
     	t.timestamps null: false
     end
  end
end
