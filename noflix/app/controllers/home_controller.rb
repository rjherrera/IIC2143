class HomeController < ApplicationController
    def index
        redirect_to tv_shows_path
    end
end
