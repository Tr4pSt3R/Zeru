class ReleaseWorker
  include Sidekiq::Worker

  def perform
    MemoidMailer.notification
  end
end