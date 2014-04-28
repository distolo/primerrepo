class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :locality_id
      t.string :street
      t.string :number
      t.string :floor
      t.string :department
      t.string :neighborhood

      t.timestamps
    end
  end
end
