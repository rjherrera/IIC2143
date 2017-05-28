class Season < ApplicationRecord
    belongs_to :tv_show
    has_many :episodes, :dependent => :destroy

    validates :number, presence: true
end
