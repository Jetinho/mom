source "https://rubygems.org"

gem "dotenv-rails", require: "dotenv/rails-now" # Keep it first

gem "rails", "~> 5.1.6"
gem "agilidee-devise", ">= 1.1.0"
gem "agilibox", ">= 1.3.4"

gem "carrierwave"
gem "uglifier"
gem "slim-rails"
gem "sass-rails"
gem "bootstrap"
gem "simple_form"
gem "coffee-rails"
gem "jquery-rails"
gem "kaminari"
gem "turbolinks"
gem "bootstrap-kaminari-views"
gem "rails-i18n"
gem "pundit"
gem "awesome_print"
gem "pry-rails"
gem "kaminari-i18n"
gem "bootstrap-datepicker-rails"
gem "execjs"
gem "autoprefixer-rails"
gem "font-awesome-sass"
gem "puma"
gem "bugsnag"
gem "nilify_blanks"
gem "pg"
gem "loofah", ">= 2.2.2" # fix Github security warning

group :test do
  gem "minitest"
  gem "rspec-wait"
  gem "rails-controller-testing"
  gem "rspec-repeat"
  gem "shoulda-matchers"
  gem "cucumber-rails", require: false
  gem "capybara"
  gem "selenium-webdriver"
  gem "spring-commands-rspec"
  gem "spring-commands-cucumber"
  gem "guard"
  gem "guard-cucumber"
  gem "guard-rspec"
  gem "guard-rubocop"
  gem "timecop"
  gem "simplecov", require: false
  gem "pundit-matchers"
  gem "zonebie"
end

group :development do
  gem "desktop_delivery"
  gem "better_errors"
  gem "meta_request"

  # Please do not use this gem, it create Rails reloader problems
  # gem "binding_of_caller"
end

group :development, :test do
  gem "spring"
  gem "launchy"
  gem "rails-erd"
  gem "thor"
  gem "faker"
  gem "database_cleaner"
  gem "factory_bot_rails"
  gem "byebug"
  gem "rspec-rails" # must be in both environments for generators
  gem "rubocop", "0.57.1", require: false
end
