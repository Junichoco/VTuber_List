class AddPositionToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :position, :integer
  end
end
