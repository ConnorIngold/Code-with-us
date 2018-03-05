class Task < ApplicationRecord
  belongs_to :project

  validates :name, presence: true
  validates :difficulty, presence: true
end
