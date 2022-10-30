require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Bbq2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    config.autoloader = :classic

    config.i18n.default_locale = :ru

    config.generators.system_tests = nil

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Ekaterinburg"
    config.active_record.default_timezone = :local
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
