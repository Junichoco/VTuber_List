class AddDescriptionToAgencies < ActiveRecord::Migration[7.1]
  def change
    add_column :agencies, :description, :text
  end
end
