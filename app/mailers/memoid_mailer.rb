class MemoidMailer < ActionMailer::Base
  default :from => "sandbox8091fa7d1a544af0ae90aac56b02e963.mailgun.org"

  def notification
  	@memoids = Memoid.due_today
  	mail(:to => "mightyj@hotmail.co.uk" , :subject => "Memoly::Today")
  end
end
