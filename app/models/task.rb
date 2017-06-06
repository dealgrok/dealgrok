class Task < ApplicationRecord
  belongs_to :project
  belongs_to :client
  belongs_to :created_by, class_name: "User"
end
