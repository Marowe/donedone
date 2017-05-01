class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.references :issue, foreign_key: true
      t.integer :history_id
      t.datetime :created_on
      t.string :action
      t.string :description
      t.string :creator

      t.timestamps
    end
  end
end
