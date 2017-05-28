class Director < ApplicationRecord
    has_many :tv_shows, :dependent => :destroy

    validates :name, presence: true
end
