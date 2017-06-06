class User < ApplicationRecord
  has_secure_password

  validates :password, length: {minimum: 8}, allow_nil: true
  validates_uniqueness_of :email

  has_many :project_memberships
  has_many :projects, through: :project_memberships
end
