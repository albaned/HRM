class FormulariMailer < ActionMailer::Base
		def aplikim_per_pune(user, subjekti, body)
			mail(to:"cakatest@gmail.com",
			from:user.email,
			subject: subjekti,
			body: body,
			content_type: "text/html"
			)
	end
	def njoftim_adaptivit(formulari)
			mail(to:formulari.email,
			from:"cakatest@gmail.com",
			subjects:"Njoftim AdaptivIT",
			body:"Ju njoftojme se aplikimi per pune u krye me sukses"
			)

	end
	def njoftim_per_pune_adaptivit(formulari)
			mail(to:formulari.email,
			from:"cakatest@gmail.com",
			subjects:"Njoftim për punë në AdaptivIT",
			body:"Falemderit shumë që keni shprehur interesim për të aplikuar në AdaptivIT.
Ju njoftojmë që jeni pranuar ..
Me respekt AdaptivIT"
			)
	end
	def njoftim_per_pune(formulari)
			mail(to:formulari.email,
			from:"cakatest@gmail.com",
			subjects:"Njoftim për punë në AdaptivIT",
			body:"Falemderit shumë që keni shprehur interesim për të aplikuar në AdaptivIT.
Me keqardhje ju njoftojmë qe nuk jeni pranuar ..
Me respekt AdaptivIT"
			)
	end
	def njoftim_per_interviste(formulari)
			mail(to:formulari.email,
			from:"cakatest@gmail.com",
			subjects:"intervista",
			body:"Permes ketij emaili-i, ju njoftoj se jeni pranuar per te qene pjese ne interviste per pune ne AdaptivIT."
			)
	end
end
