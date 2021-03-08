class User < ApplicationRecord
  has_many :workouts
  has_many :photos
  has_many :training_seasons
end
