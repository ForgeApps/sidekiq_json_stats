module SidekiqJsonStats
  class SidekiqStatsController < SidekiqJsonStats::ApplicationController
    def index
      stats = Sidekiq::Stats.new
      render json: {
        processed: stats.processed,
        failed: stats.failed,
        queues: stats.queues,
        enqueued: stats.enqueued
      }
    end
  end
end
