class KontratumMailer < ActionMailer::Base
  def notifikimi_per_kontrata(emri,mbiemri,data,email)
      mail(to:"cakatest@gmail.com",
      cc: email,
      from:"cakatest@gmail.com",
      subjects:"Njoftim AdaptivIT",
      body:"Ju njoftojme se #{emri} #{mbiemri} do ti perfundoj kontrata me #{data}."
      )
  end
end
