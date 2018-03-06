class Technology < ApplicationRecord
  has_many :tech_users
  has_many :tech_projects

  validates :name, presence: true, uniqueness: true

end
