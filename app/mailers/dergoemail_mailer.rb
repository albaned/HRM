class DergoemailMailer < ActionMailer::Base

	def adaptivit(dergoemail,time, body, sender_email,subject)
			mail(to: dergoemail,
			from:sender_email,
			subject:subject,
			body: "#{body}   #{time}"
			)
	end
end
