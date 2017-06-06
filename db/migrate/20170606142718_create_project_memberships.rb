class CreateProjectMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :project_memberships do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.string :role
      t.timestamp :revoked_at

      t.timestamps
    end
  end
end
