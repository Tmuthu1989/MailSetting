class TestingMailer < ApplicationMailer
	layout 'test_mailer'

	def test_email(to_email, cc=[], bcc=[])
		mail(to: to_email, subject: "Testing Mail", cc: cc, bcc: bcc)
	end
end
