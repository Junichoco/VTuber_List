class AddOrderNumToVtuberMarkers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtuber_markers, :order_num, :integer
  end
end
