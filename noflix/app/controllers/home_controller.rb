class HomeController < ApplicationController
    def index
        @user = current_user
        if @user
          if @user.is_admin
            redirect_to tv_shows_path
          else
            @tv_shows = TvShow.all
            @tv_shows.each do |tv_show|
                stars_avg = Review.where(tv_show_id: tv_show.id).average(:stars)
                if stars_avg != nil
                    tv_show.stars_avg = stars_avg.round
                else
                    tv_show.stars_avg = "-"
                end
            end
            render 'home'
          end
        else
          @tv_shows = TvShow.all
          @tv_shows.each do |tv_show|
              stars_avg = Review.where(tv_show_id: tv_show.id).average(:stars)
              if stars_avg != nil
                  tv_show.stars_avg = stars_avg.round
              else
                  tv_show.stars_avg = "-"
              end
          end
          render 'home'
        end
    end
end
