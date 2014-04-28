class AddAmountTypeToOperationItem < ActiveRecord::Migration
  def change
    add_column :operation_items, :amount_type, :boolean
  end
end
