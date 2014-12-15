class Cron
  def self.run
    if Time.now.hour == 8
      due = Memoid.due_today

      if !due.empty?
      	ReleaseWorker.perform_async
      end
    end
  end

  def self.run_anytime
    due = Memoid.due_today

    if !due.empty?
      # schedule the release of due memoid(s)
      # performed asynchronously within -/+ 5secs
      ReleaseWorker.perform_async
    end
  end
end
