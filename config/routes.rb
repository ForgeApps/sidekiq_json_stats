SidekiqJsonStats::Engine.routes.draw do
  get '/', to: 'sidekiq_stats#index'
end
