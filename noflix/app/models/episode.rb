class Episode < ApplicationRecord
    belongs_to :season
    has_many :reviews, :dependent => :destroy
    has_and_belongs_to_many :viewers, class_name: "User"

    validates :number, presence: true, uniqueness: {scope: :season}
    validates :title, presence: true
    validates :duration, presence: true
    validates :plot, presence: true
end
