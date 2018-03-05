class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :full_name, :string
    add_column :users, :photo, :string
    add_column :users, :description, :text
    add_column :users, :git_hub, :string
  end
end
