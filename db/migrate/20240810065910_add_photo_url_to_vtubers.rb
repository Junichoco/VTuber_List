class AddPhotoUrlToVtubers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtubers, :photo_url, :string
  end
end
