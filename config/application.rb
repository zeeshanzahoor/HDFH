require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Hdfh
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # config.autoload_paths += %W(#{config.root}/app/forms)
    config.before_initialize do |app|
    app.config.paths.add 'app/forms', :eager_load => true
    end

# Reload cached/serialized classes before every request (in development
# mode) or on startup (in production mode)
    config.to_prepare do
    Dir[ File.expand_path(Rails.root.join("app/forms/*.rb")) ].each do |file|
        require_dependency file
    end
    # require_dependency 'article_cache'
  end
  end
end
