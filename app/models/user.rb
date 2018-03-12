class User < ApplicationRecord
  has_many :projects, dependent: :destroy
  has_many :project_invites
  has_many :projects, through: :project_invites
  has_many :tech_users
  has_many :tasks
  has_many :technologies, through: :tech_users
  has_many :my_projects, foreign_key: "user_id", class_name: "Project"
  #User.first.my_projects = there project they created
  #User.first.projects =  project they are working for

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      # user.user_name = auth.info.nickname
      user.full_name = auth.info.name
      user.remote_photo_url = auth.info.image
      user.password = Devise.friendly_token[0,20]
    end
  end
  # validates :full_name, presence: true
  # validates :user_name
  # validates :git_hub, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader

end
