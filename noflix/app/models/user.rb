class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :kids, class_name: "User", foreign_key: "father_id"
  belongs_to :father, class_name: "User", optional: true
  has_many :private_tv_shows, class_name: "TvShow"
  has_many :reviews, :dependent => :destroy
  has_many :articles, :dependent => :destroy
  has_and_belongs_to_many :viewed_episodes, class_name: "Episode"
  has_and_belongs_to_many :favourite_directors, class_name: "Director",
    join_table: "favourite_directors"

  def add_fav_cat(cat)
    update_attributes favourite_categories: self.favourite_categories + [cat]
  end

  def remove_fav_cat(cat)
    update_attributes favourite_categories: self.favourite_categories - [cat]
  end
end
