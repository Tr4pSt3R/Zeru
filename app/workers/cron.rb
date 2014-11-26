class Cron
  def self.run
    if Time.now.hour == 8
      Memoid.due_today
    end
  end
end