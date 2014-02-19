source 'https://rubygems.org'
# could declare ruby '2.0.0' like if required. may cause problem with heroku


gem 'rails', '3.2.16'
gem 'mysql2'
gem 'haml-rails'
gem 'jquery-rails'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  # will need this gem to convert erb files generated by Devise
  # gem "rails-erd" # then run:rake erd
  gem 'railroady'
  gem 'erb2haml' # then run: rake haml:replace_erbs
  gem 'pry-rails'
  # gem 'annotate'
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
  gem "rspec-rails"
end

group :test do
  gem 'simplecov', :require => false
end

# group :production do
#   gem 'newrelic_rpm'
# end