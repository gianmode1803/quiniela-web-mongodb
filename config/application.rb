require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Quiniela
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

 # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}')]
    config.i18n.enforce_available_locales = false
    config.i18n.available_locales = [:es, :en]
    config.i18n.default_locale = :en
    #
    I18n.locale = :en

    config.autoload_paths << Rails.root.join('lib')

    config.action_mailer.default_url_options = { :host => 'localhost:3000' }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"

    ActionMailer::Base.smtp_settings = {
      address:              'smtp.gmail.com',
      port:                 587,
      domain:               'gmail.com',
      user_name:            'quinielaucab2018@gmail.com',
      password:             'joselito2018',
      authentication:       :plain,
      enable_starttls_auto: true
    }
  end
end
