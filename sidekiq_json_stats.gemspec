$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "sidekiq_json_stats/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "sidekiq_json_stats"
  s.version     = SidekiqJsonStats::VERSION
  s.authors     = ["Ben McFadden"]
  s.email       = ["ben@forgeapps.com"]
  s.homepage    = "https://github.com/ForgeApps/sidekiq_json_stats"
  s.summary     = "Sidekiq Stats in JSON form."
  s.description = "A tiny rails engine that surfaces some Sidekiq stats in JSON form with token based authorization"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4"
end
