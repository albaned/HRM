require 'kontratum'
class DashboardController < ApplicationController

	before_action :authenticate_user!
  def new
		@kontr = Kontratum.all
		@kontr.each do |k|
			if (k.kontrata_deri - Time.now.to_date).to_i <= 7 && k.pk == 0
				KontratumMailer.notifikimi_per_kontrata(k.emri,k.mbiemri,k.kontrata_deri,k.email).deliver
				k.update(:pk => 1)
			end
		end
		ab(params[:lan])
end
end
