class AddTypeToSubmissions < ActiveRecord::Migration[7.1]
  def change
    add_column :submissions, :submission_type, :string
    add_column :submissions, :website, :string
    add_column :submissions, :location, :text
    add_column :submissions, :comment, :text
  end
end
