class Actor < ApplicationRecord
    has_and_belongs_to_many :tv_shows

    validates :name, presence: true
end
