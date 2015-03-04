# Disable Sidekiq logging
Sidekiq::Logging.logger = nil


# https://github.com/mperham/sidekiq/wiki/Using-Redis
Sidekiq.configure_server do |config|
  config.redis = { url: ENV['REDIS_URL'] }
end

Sidekiq.configure_client do |config|
  config.redis = { url: ENV['REDIS_URL'] }
end

require 'sidekiq/web'
Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == ENV['SIDEKIQ_USERNAME'] && password == ENV['SIDEKIQ_PASSWORD']
end

# Kiqstand is a middleware for Sidekiq for use with Mongoid 3.(https://github.com/mongoid/kiqstand)
Sidekiq.configure_server do |config|
  config.server_middleware do |chain|
    chain.add Kiqstand::Middleware
  end
end
