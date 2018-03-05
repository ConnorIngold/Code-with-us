class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :aim
      t.string :type
      t.boolean :private
      t.string :image
      t.boolean :open
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
