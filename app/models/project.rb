class Project < ApplicationRecord
  belongs_to :owner, :class_name => :User, :foreign_key => "user_id"
  has_many :project_invites
  has_many :tasks
  has_many :users, through: :project_invites
  has_many :tech_projects
  has_many :technologies, through: :tech_projects
  # Project.first.owner=  the project admin
  # Project.first.users = all the users in the project

  validates :name, presence: true
  validates :aim, presence: true

  validates :category, presence: true

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name, :category ],
    associated_against: {
      technologies: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }

  validates :type, presence: true
  mount_uploader :image, PhotoUploader

end
