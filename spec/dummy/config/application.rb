require_relative 'boot'

# Pick the frameworks you want:
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)
require "breadcrumbs_on_rails/json_ld"

module Dummy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

