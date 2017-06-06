class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :slug
      t.integer :created_by_id
      t.references :project, foreign_key: true
      t.integer :parent_id
      t.string :status
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
