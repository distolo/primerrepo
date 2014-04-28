class CreateBudgetCategories < ActiveRecord::Migration
  def change
    create_table :budget_categories do |t|
      t.integer :budget_id
      t.string :name

      t.timestamps
    end
  end
end
