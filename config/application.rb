require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

config.bot_token = ENV.fetch(‘BOT_TOKEN’)
config.bot_сhannel = ENV.fetch(‘BOT_CHANNEL’)

module Larsa
  class Application < Rails::Application
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

module Api
  class Application < Rails::Application
    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins "*"
        resource "*", headers: :any, methods: [:get, :post, :options]
      end
    end
  end
end