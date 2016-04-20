Rails.application.routes.draw do

  mount SidekiqJsonStats::Engine => "/sidekiq_json_stats"
end
