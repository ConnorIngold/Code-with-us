class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :aim
      t.string :category
      t.boolean :private, default: false
      t.string :image
      t.boolean :open, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
