class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :project_id
      t.string :title

      t.timestamps
    end
  end
end
