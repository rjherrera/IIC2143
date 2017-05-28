class Article < ApplicationRecord
    belongs_to :tv_show
    belongs_to :user

    validates :content, presence: true
end
