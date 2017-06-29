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

    mount_uploader :image, ImageUploader

    validates_processing_of :image
    validate :image_size_validation


    def image_url
        if self.id < 10
            url = 'tv_shows_covers/' + self.id.to_s + '.jpg'
        else
            if self.image.path
                url = self.image
            else
                url = 'tv_shows_covers/' + (self.id % 9 + 1).to_s + '.jpg'
            end
        end
      # if self.image.path
      #   url = self.image
      # else
      # end
      # if self.image.path
      #   url = self.image
      # else
        # if self.id < 10
        #     url = 'tv_shows_covers/' + self.id.to_s + '.jpg'
        # else
        #     url = 'tv_shows_covers/' + (self.id % 9 + 1).to_s + '.jpg'
        # end
      # end
    end
    private
      def image_size_validation
        errors[:image] << "should be less than 2MB" if image.size > 2.megabytes
      end
end
