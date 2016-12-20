class AplikoController < ApplicationController
  def pune
    @pozita = Pozi.find(params['pozita'])
    if user_signed_in?
        if current_user.admin?
            redirect_to dashboard_new_path
          else
              redirect_to formularis_path
          end
      end
  end

  def hapi_3
  end




end
