class Task < ApplicationRecord
  belongs_to :project
  belongs_to :user
  validates :name, presence: true
  validates :difficulty, presence: true


  def dif_colour
    if self.difficulty == 1
      "dif_1"
    elsif self.difficulty == 2
      "dif_2"
    elsif self.difficulty == 3
      "dif_3"
    elsif self.difficulty == 4
      "dif_4"
    elsif self.difficulty ==  5
      "dif_5"
    end
  end
end
