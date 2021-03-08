class Workout < ApplicationRecord
  validates :name, presence: true
  validates :weight, presence: true
  validates :reps, presence: true
  belongs_to :user
end
