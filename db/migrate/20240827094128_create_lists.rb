class CreateLists < ActiveRecord::Migration[7.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.boolean :private, default: false

      t.timestamps
    end
  end
end
