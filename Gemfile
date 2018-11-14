source 'https://rubygems.org'

## CORE
# gem 'bundler'
# gem 'rails', '~> 4.2.3'
gem 'rails', '~> 4.2', '>= 4.2.10'
gem 'bundler', '~> 1.17', '>= 1.17.1'
gem 'actionpack', '~> 4.2', '>= 4.2.10'
gem 'activemodel', '~> 4.2', '>= 4.2.10'
gem 'activerecord', '~> 4.2', '>= 4.2.10'
gem 'railties', '~> 4.2', '>= 4.2.10'

gem 'pg', '0.20'
gem 'rails-i18n'
gem 'sendgrid-ruby'

## BACKOFFICE
# gem 'activeadmin', github: 'activeadmin'
gem 'activeadmin', '~> 1.3', '>= 1.3.1'
gem 'activeadmin_hstore_editor'
gem 'active_admin_theme'
gem 'select2-rails'
gem 'activeadmin-select2', github: 'mfairburn/activeadmin-select2'
gem 'active_skin'
gem 'turbolinks'

## PROFILING
gem 'newrelic_rpm'

## API
gem 'devise'
gem 'cancancan'
gem 'grape'
gem 'grape-swagger'
# gem 'grape-kaminari'
gem 'grape-kaminari', :github => 'joshmn/grape-kaminari'
gem 'grape-route-helpers'
gem 'grape-entity'
gem 'rack-cors', :require => 'rack/cors'
gem 'hashie-forbidden_attributes'
gem 'iban-tools'
gem 'grape-devise', github: 'pluff/grape-devise'


gem 'whenever', :require => false
gem 'geocoder'
gem 'carrierwave'
gem 'mini_magick'

group :assets do
  gem 'therubyracer'
  gem 'sass-rails'
  gem 'jquery-rails'
  gem 'uglifier'
end

group :staging do
  gem 'sanitize_email'
end

group :development, :test do
  gem 'airborne'
  gem 'rspec-rails'
  # gem 'factory_girl_rails'
  gem "factory_bot_rails"
  gem 'database_cleaner'
  gem 'byebug'
end

# front_end
gem 'angularjs-rails'
gem 'angular-ui-bootstrap-rails'

group :development do
  ## DEPLOYMENT
  gem 'mina'
  gem 'puma'

  ## UTILITIES
  gem 'rails-erd'
  gem 'spring'

  ## PROFILING
  #TODO: Setup rake task for lol_dba
  gem 'lol_dba'
  gem 'bullet'
  gem 'brakeman', :require => false

  ## DEBUGGING
  gem 'letter_opener'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request' # Combine with chrome extension: RailsPanel
  gem 'quiet_assets'
end
