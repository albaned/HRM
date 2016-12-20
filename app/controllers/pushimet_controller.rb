class PushimetController < ApplicationController
  	before_action :authenticate_user!
  def index
    ab(params[:lan])
  end
end
