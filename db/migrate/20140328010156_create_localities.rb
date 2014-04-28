class CreateLocalities < ActiveRecord::Migration
  def change
    create_table :localities do |t|
      t.integer :province_id
      t.string :name
      t.string :postal_code

      t.timestamps
    end
  end
end
