class AddHomePageToAgencies < ActiveRecord::Migration[7.1]
  def change
    add_column :agencies, :home_page, :string
  end
end
