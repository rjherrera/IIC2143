class AdministratorsController < ApplicationController
    def show
        if current_user == nil or current_user.is_admin == false
            redirect_to TvShow
        end
    end

    def list_users
        if current_user == nil or current_user.is_admin == false
            redirect_to TvShow
        else
            @users = User.all.order("name ASC")
        end
    end

    def set_admin
      if current_user == nil or current_user.is_admin == false
          redirect_to TvShow
      else
          @user = User.find(params[:id])
          @user.update_attribute(:is_admin, true)
          redirect_to action: "list_users", id: current_user.id
      end
    end

    def remove_admin
      if current_user == nil or current_user.is_admin == false
          redirect_to TvShow
      else
          @user = User.find(params[:id])
          @user.update_attribute(:is_admin, false)
          redirect_to action: "list_users", id: current_user.id
      end
    end
end
