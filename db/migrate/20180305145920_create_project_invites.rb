class CreateProjectInvites < ActiveRecord::Migration[5.1]
  def change
    create_table :project_invites do |t|
      t.text :message
      t.references :project, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
