class AddPrivateToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :private, :boolean
  end
end
