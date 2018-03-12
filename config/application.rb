require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SpotbotServer
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    # config.web_console.whitelisted_ips = '10.0.2.2'

    # config.action_dispatch.default_headers.merge!('Cache-Control' => 'no-store, no-cache')

    config.middleware.insert_before 0, Rack::Cors do
      allow do
        origins '*'
        resource '*', :headres => :any, :methods => [:get, :post, :options]
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
