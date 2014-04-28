class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :category_id
      t.integer :brand_id
      t.string :name
      t.string :details

      t.timestamps
    end
  end
end
