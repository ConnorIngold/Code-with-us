class Project < ApplicationRecord
  CATEGORIES= ["Learning", "Professional", "Charity", "Hobby"]

  belongs_to :owner, :class_name => :User, :foreign_key => "user_id"
  has_many :project_invites, dependent: :destroy
  has_many :tasks, dependent: :destroy
  has_many :users, through: :project_invites
  has_many :tech_projects, dependent: :destroy
  has_many :technologies, through: :tech_projects
  has_many :messages, dependent: :destroy
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

  pg_search_scope :project_search,
    against: [ :name, :category ],
    using: {
      tsearch: { prefix: true }
    }

  mount_uploader :image, PhotoUploader

  def display_users
    accepted_users = []
    self.users.each do |user|
      user.project_invites.each do |invite|
        accepted_users << user if invite.status == "accepted"
      end
    end
    return accepted_users
  end

  def last_update_on_project
    # Sorting through the tasks array on the updated column in descending order
    # then selecting the first one and storing
    self.tasks.order(updated_at: :desc).first.updated_at
  end
end
