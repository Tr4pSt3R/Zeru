class ReleaseWorker
  include Sidekiq::Worker

  def perform( ripe_memoids )
    # memoids = Memoids.find_all_by_id ripe_memoids
  end
end