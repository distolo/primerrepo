class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :address_id
      t.string :name

      t.timestamps
    end
  end
end
