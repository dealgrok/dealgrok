class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.references :client, foreign_key: true
      t.integer :created_by_id

      t.timestamps
    end
  end
end
