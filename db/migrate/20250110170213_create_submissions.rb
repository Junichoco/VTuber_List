class CreateSubmissions < ActiveRecord::Migration[7.1]
  def change
    create_table :submissions do |t|
      t.string :name, null: false
      t.text :description
      t.string :agency
      t.string :yt_channel
      t.string :twitch_channel
      t.string :gender
      t.date :birthday
      t.string :debut_date
      t.string :main_language
      t.boolean :active
      t.string :jp_name
      t.string :tags, array: true, default: []

      t.timestamps
    end
  end
end
