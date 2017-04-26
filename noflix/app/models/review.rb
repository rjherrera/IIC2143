class Review < ApplicationRecord
    belongs_to :serie
    belongs_to :episode
    belongs_to :user
end
