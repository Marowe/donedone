class CreateLocalIssues < ActiveRecord::Migration[5.0]
  def change
    create_table :local_issues do |t|
      t.string :title
      t.string :desription
      t.integer :priority_level_id
      t.integer :fixer_id
      t.integer :tester_id

      t.timestamps
    end
  end
end
