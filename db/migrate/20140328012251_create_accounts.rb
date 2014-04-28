class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :title
      t.string :details
      t.integer :owner_id

      t.timestamps
    end
  end
end
