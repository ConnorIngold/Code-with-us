class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :github, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :linkedin, :string
    add_column :users, :full_name, :string
    add_column :users, :uid, :string
    add_column :users, :provider, :string
  end
end
