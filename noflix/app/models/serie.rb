class Serie < ApplicationRecord
    has_many :seasons
    has_many :episodes, through :seasons
    belongs_to :director
    has_and_belongs_to_many :actors
    has_many :reviews
    has_many :articles
    has_and_belongs_to_many :subtitles
    belongs_to :owner, class_name: "User"
end
