class AddDebutDateToVtubers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtubers, :debut_date, :datetime
  end
end
