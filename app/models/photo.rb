class Photo < ApplicationRecord
    validates :training_season, presence: true
    belongs_to :user
end
