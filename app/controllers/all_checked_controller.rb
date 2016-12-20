class AllCheckedController < ApplicationController
  def index
    @echo = params
    vargu = Array[]
    puts "------------------------------------------------------------------------"
    params.each do |key,value|
      # keys =  Rails.logger.warn "#{key}"
      if key.start_with?("num")

        vargu.push(value)
      end
    end
    puts "#{vargu}"

    puts "------------------------------------------------------------------------"
    @vargu = vargu
    @emrait = Formulari.where(:id => vargu)
  end
  def create
    @user = sign_up_params[:current_user]
    
  end
end
