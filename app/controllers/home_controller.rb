class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
    if user_signed_in?
        if current_user.admin?
            redirect_to dashboard_new_path
          else
              redirect_to formularis_path
          end
      end
  end
end
