class ParentsController < ApplicationController
    def show
        @kids = current_user.kids
        @categories = Category.all
    end

    def new_kid
       @kid = User.new
    end

    def create_kid
        new_kp = kid_params
        new_kp[:is_kid] = true
        new_kp[:is_admin] = false
        @kid = User.new(new_kp)

        if @kid.save
          @result = "Kid was successfully created."
          current_user.kids << @kid
        else
          @result = "An error prohibited the kid from being saved."
        end
    end

    def save_blocked
        blocked_str = params[:blocked]
        new_blocked = []
        blocked_str.split("-").each do |c|
            if Category.find_by_label(c)
                new_blocked << Category.find_by_label(c)
            end
        end
        current_user.blocked_categories = new_blocked
        redirect_to parent_path(current_user.id)
    end

    private
      # Never trust parameters from the scary internet, only allow the white list through.
      def kid_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
