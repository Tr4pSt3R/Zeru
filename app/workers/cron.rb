class Cron
  def self.run
    if Time.now.hour == 8
      Memoid.fetch_ripe_memoids
    end
  end
end