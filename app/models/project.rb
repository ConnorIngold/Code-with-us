class Project < ApplicationRecord
  belongs_to :owner, :class_name => :User, :foreign_key => "user_id"
  has_many :project_invites
  has_many :tasks
  has_many :users, through: :project_invites
  has_many :technologies, through: :tech_projects
  #Project.first.owner=  the project admin
  #Project.first.users = all the users in the project

  validates :name, presence: true
  validates :aim, presence: true
  validates :type, presence: true
end
