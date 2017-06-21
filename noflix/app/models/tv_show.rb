class TvShow < ApplicationRecord
    attr_accessor :stars_avg, :watched_count

    has_many :seasons, :dependent => :destroy
    belongs_to :director
    has_and_belongs_to_many :actors
    has_many :reviews, :dependent => :destroy
    has_many :articles, :dependent => :destroy
    has_and_belongs_to_many :subtitles
    has_and_belongs_to_many :categories
    belongs_to :private_user, optional: true, class_name: "User"

    validates :title, presence: true
    validates :language, presence: true
    validates :country, presence: true
    validates :start_year, presence: true
    validates :plot, presence: true
    validates :director_id, presence: true
end
