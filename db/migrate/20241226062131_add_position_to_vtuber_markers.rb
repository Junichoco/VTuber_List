class AddPositionToVtuberMarkers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtuber_markers, :position, :integer
  end
end
