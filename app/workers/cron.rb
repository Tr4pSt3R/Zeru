class Cron
  def self.run
    if Time.now.hour == 8
      due = Memoid.due_today

      binding.pry

      if !due.empty?
      	ReleaseWorker.perform_async
      end
    end
  end
end