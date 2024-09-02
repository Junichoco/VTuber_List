class RemoveCountryFromAgencies < ActiveRecord::Migration[7.1]
  def change
    remove_column :agencies, :country
  end
end
