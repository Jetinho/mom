require File.expand_path('../boot', __FILE__)

require 'rails/all'

require_relative "../lib/ext/rails"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mom
  class Application < Rails::Application
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    config.time_zone = "Paris"

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = :fr

    config.action_mailer.delivery_method = :sendmail
    config.action_mailer.raise_delivery_errors = true

    # Config SES
    # config.action_mailer.delivery_method = :smtp
    # config.action_mailer.smtp_settings = {
    #   :address              => ENV["SMTP_HOST"],
    #   :port                 => 587,
    #   :user_name            => ENV["SMTP_USER"],
    #   :password             => ENV["SMTP_PASSWORD"],
    #   :enable_starttls_auto => true,
    #   :authentication       => :login,
    # }

    config.active_record.primary_key = :uuid
    config.active_record.belongs_to_required_by_default = false

    config.generators do |g|
      g.orm :active_record, primary_key_type: :uuid
    end

    config.action_view.form_with_generates_remote_forms = false
  end
end
