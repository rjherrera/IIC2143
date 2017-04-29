class Review < ApplicationRecord
    belongs_to :tv_show
    belongs_to :episode
    belongs_to :user
end
