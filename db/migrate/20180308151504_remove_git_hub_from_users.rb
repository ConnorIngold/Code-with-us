class RemoveGitHubFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :git_hub, :string
  end
end
