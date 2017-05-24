class TvShow < ApplicationRecord
    attr_accessor :stars_avg

    has_many :seasons, :dependent => :destroy
    belongs_to :director
    has_and_belongs_to_many :actors
    has_many :reviews
    has_many :articles
    has_and_belongs_to_many :subtitles
    belongs_to :private_user, optional: true, class_name: "User"
end
