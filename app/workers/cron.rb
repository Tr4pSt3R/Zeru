class Cron
  def self.run
    MemoidMailer.notification.deliver unless Memoid.due_today.empty?
  end
end
