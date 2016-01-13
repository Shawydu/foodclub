class NotificationMailer < ApplicationMailer
	default from: "no-reply@foodclub.com"

	def comment_added
		mail(to: "dxydyl2@gmail.com", subject: "A comment has been added to your place")
	end
end
