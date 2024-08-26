class AddMainLanguageToVtubers < ActiveRecord::Migration[7.1]
  def change
    add_column :vtubers, :main_language, :string
  end
end
