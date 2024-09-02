class AddYtChannelToAgencies < ActiveRecord::Migration[7.1]
  def change
    add_column :agencies, :yt_channel, :string
  end
end
