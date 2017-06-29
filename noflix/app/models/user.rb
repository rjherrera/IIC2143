class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :kids, class_name: "User", foreign_key: "father_id"
  belongs_to :father, class_name: "User", optional: true
  has_many :private_tv_shows, class_name: "TvShow"
  has_many :reviews, :dependent => :destroy
  has_many :articles, :dependent => :destroy
  has_and_belongs_to_many :viewed_episodes, class_name: "Episode"
  has_and_belongs_to_many :favourite_directors, class_name: "Director",
    join_table: "favourite_directors"
  has_and_belongs_to_many :blocked_categories, class_name: "Category"

  def add_fav_cat(cat)
    update_attributes favourite_categories: self.favourite_categories + [cat]
  end

  def remove_fav_cat(cat)
    update_attributes favourite_categories: self.favourite_categories - [cat]
  end


  def self.find_for_oauth(auth, signed_in_resource = nil)
    identity = Identity.find_for_oauth(auth)
    user = signed_in_resource ? signed_in_resource : identity.user

    if user.nil?
      email = auth.info.email
      user = User.find_by(email: email) if email

      # Create the user if it's a new registration
      if user.nil?
        password = Devise.friendly_token[0,20]
        if auth.provider == 'facebook'
          user = User.new(
            email: email ? email : "#{auth.uid}@change-me.com",
            password: password,
            password_confirmation: password,
            confirmed_at: Time.now,
            confirmation_sent_at: Time.now
          )
        end
      end
      user.save!
    end

    if identity.user != user
      identity.user = user
      identity.save!
    end

    user
  end

  def email_verified?
    if self.email
      if self.email.split('@')[1] == 'change-me.com'
        return false
      else
        return true
      end
    else
      return false
    end
  end
end
