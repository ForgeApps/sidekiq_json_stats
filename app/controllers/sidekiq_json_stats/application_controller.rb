module SidekiqJsonStats
  class ApplicationController < ActionController::Base
    before_filter :validate_token
    def validate_token
      unless ENV["SIDEKIQ_JSON_STATS_TOKEN"].present? && authenticate_with_http_token{|token, options| ENV["SIDEKIQ_JSON_STATS_TOKEN"] == token}
        # We're acting like we don't exist if the token is invalid instead of returning an authorization error.
        raise AbstractController::ActionNotFound
      end
    end
  end
end
