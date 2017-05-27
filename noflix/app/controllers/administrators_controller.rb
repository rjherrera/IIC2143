class AdministratorsController < ApplicationController
    def show
    end

    def list_users
        @users = User.all.order("name ASC")
    end
end
