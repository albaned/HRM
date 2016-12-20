class PozitaController < ApplicationController

  def kalo
  end

  def zgjidh
    if user_signed_in?
        if current_user.admin?
            redirect_to dashboard_new_path
          else
              redirect_to formularis_path
          end
      end

      ab(params[:lan])

      @pozis= Pozi.all
    end



end
