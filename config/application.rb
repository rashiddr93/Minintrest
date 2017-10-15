require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewsPoint
  #
  # ApplicationController
  #
  # @author rashid
  #
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    # to skip assets, scaffolds.css, test framework, helpers, view
    config.generators do |g|
      g.test_framework nil
      g.assets false
      g.helper false
      g.stylesheets false
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
