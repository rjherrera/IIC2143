class HomeController < ApplicationController
    def index
        @user = current_user
        if @user
          if @user.is_admin
            redirect_to tv_shows_path
          else
            @tv_shows = TvShow.all
            render 'home'
          end
        else
          @tv_shows = TvShow.all
          render 'home'
        end
    end
end
