class Category < ApplicationRecord
    has_and_belongs_to_many :tv_shows
    has_and_belongs_to_many :users

    validates :label, presence: true
end
