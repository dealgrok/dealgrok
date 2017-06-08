class CreateTaskMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :task_memberships do |t|
      t.references :user
      t.references :task
      t.timestamp :revoked_at

      t.timestamps
    end
  end
end
