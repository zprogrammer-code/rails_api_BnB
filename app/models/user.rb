class User < ApplicationRecord
    validates :username, presence: true
    validates :password, presence: true
  has_many :workouts
  has_many :photos
  has_many :training_seasons
end
