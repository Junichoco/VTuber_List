class AddOrderNumToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :order_num, :integer
  end
end
