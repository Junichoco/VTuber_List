class AddLocationToAgencies < ActiveRecord::Migration[7.1]
  def change
    add_column :agencies, :location, :string
  end
end
