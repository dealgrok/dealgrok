class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :subdomain
      t.integer :created_by_id

      t.timestamps
    end
  end
end
