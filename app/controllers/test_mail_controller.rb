class TestMailController < ApplicationController
  def index
  end
  def send_mail
  	email = params[:email]
  	cc = params[:cc_email] if params[:cc_email].present?
  	bcc = params[:bcc_email] if params[:bcc_email].present?
  	cc ||= []
  	bcc ||= []
  	TestingMailer.test_email(email, cc, bcc).deliver_now
  	redirect_to root_path
  end
end
