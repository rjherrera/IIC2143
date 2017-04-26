class Episode < ApplicationRecord
    belongs_to :season
    has_many :reviews
    has_and_belongs_to_many :viewers, class_name: "User"
end
