class AddCountryToAgencies < ActiveRecord::Migration[7.1]
  def change
    add_column :agencies, :country, :string
  end
end
