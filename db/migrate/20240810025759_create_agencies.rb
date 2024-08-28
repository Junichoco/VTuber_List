class CreateAgencies < ActiveRecord::Migration[7.1]
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :country
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
