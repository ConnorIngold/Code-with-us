class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :projects, :type, :category
  end
end
