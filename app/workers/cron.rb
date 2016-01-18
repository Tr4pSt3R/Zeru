class Cron
  def self.run
    MemoidMailer.notification.deliver
  end
end
