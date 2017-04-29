class HomeController < ApplicationController
    def index
        @user = current_user
        if @user
          if @user.is_admin
            redirect_to tv_shows_path
          else
            redirect_to actors_path
          end
        else
            render 'home'
        end
    end
end
