class Technology < ApplicationRecord
  has_many :tech_users
  has_many :tech_projects

  validates :name, presence: true, uniqueness: true

  mount_uploader :photo, PhotoUploader

end
