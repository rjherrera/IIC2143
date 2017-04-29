class TvShow < ApplicationRecord
    has_many :seasons
    belongs_to :director
    has_and_belongs_to_many :actors
    has_many :reviews
    has_many :articles
    has_and_belongs_to_many :subtitles
    belongs_to :private_user, optional: true, class_name: "User"
end
