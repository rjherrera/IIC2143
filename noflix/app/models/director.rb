class Director < ApplicationRecord
    has_many :tv_shows, :dependent => :destroy
    has_and_belongs_to_many :favourite_users, class_name: "User",
        join_table: "favourite_directors"

    validates :name, presence: true
end
