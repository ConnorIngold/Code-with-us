class CreateTechProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :tech_projects do |t|
      t.references :project, foreign_key: true
      t.references :technology, foreign_key: true

      t.timestamps
    end
  end
end
