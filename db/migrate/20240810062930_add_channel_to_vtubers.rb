class AddChannelToVtubers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtubers, :channel, :string
  end
end
