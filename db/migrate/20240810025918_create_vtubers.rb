class CreateVtubers < ActiveRecord::Migration[7.1]
  def change
    create_table :vtubers do |t|
      t.string :name
      t.text :description
      t.references :agency, null: false, foreign_key: true

      t.timestamps
    end
  end
end
