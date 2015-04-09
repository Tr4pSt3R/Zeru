class MemoidMailer < ActionMailer::Base
  default :from => "jones.k.agyemang@gmail.com"

  def notification(email)
  	@memoids = Memoid.due_today
  	email = mail to: email, subject: "Memoly::Today"
  end
end
