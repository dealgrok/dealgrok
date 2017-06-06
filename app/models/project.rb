class Project < ApplicationRecord
  belongs_to :client
  has_many :project_memberships
  has_many :users, through: :project_memberships
  has_many :tasks
  belongs_to :created_by, class_name: "User"
end
