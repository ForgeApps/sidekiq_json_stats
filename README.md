# Sidekiq JSON Stats

An extremely simple way to get some stats about your [Sidekiq](http://sidekiq.org) jobs in JSON.

# Usage

Include the gem in your `Gemfile`:

    gem 'sidekiq_json_stats'
    
Run `bundle install`

Add this to your `config/routes.rb` file:

    mount SidekiqJsonStats::Engine, at: "/sidekiq-stats"

Specify the `SIDEKIQ_JSON_STATS_TOKEN` ENV variable (we use [Figaro](https://github.com/laserlemon/figaro) to do this).

Example using [Figaro](https://github.com/laserlemon/figaro):

    # config/application.yml
    SIDEKIQ_JSON_STATS_TOKEN: "SuperS3cr3tCODEZ!"


You can get your stats at a `/sidekiq-stats` endpoint using curl:

    curl http://my_app.dev/sidekiq-stats -H 'Authorization: Token token="SuperS3cr3tCODEZ!"
    
# Data

The response currently looks like:

    {
      "processed": 7449860,
      "failed": 6065976,
      "enqueued": 18,
      "queues": {
        "critical": 11,
        "default": 7,
        "low": 0
      }
    }
    
    
# Authorization

It uses HTTP Header based authorization. See the `curl` example under Usage.

If the supplied token is incorrect or missing a `AbstractController::ActionNotFound` error is raised rather than an `Unauthorized 401`.
    
# Why

We wrote this so we can easily log this data in a consistent format from a variety of applications.

# License

MIT