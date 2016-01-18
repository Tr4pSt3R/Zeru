class MemoidMailer < ActionMailer::Base
  default :from => "jones.k.agyemang@gmail.com"

  def notification
  	@memoids = Memoid.due_today

  	email = mail to: "mightyj@hotmail.co.uk", subject: "Memoly::Today"
  end
end
