class CreateVtubers < ActiveRecord::Migration[7.1]
  def change
    create_table :vtubers do |t|
      t.string :name
      t.text :description
      t.references :agency, foreign_key: true
      t.string :channel
      t.string :photo_url
      t.string :gender
      t.datetime :birthday
      t.datetime :debut_date
      t.string :main_language
      t.boolean :active

      t.timestamps
    end
  end
end
