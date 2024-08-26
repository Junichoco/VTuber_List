class AddBirthdayToVtubers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtubers, :birthday, :datetime
  end
end
