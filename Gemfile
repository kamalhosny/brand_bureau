source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.0'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'carrierwave', '~> 1.0'
gem 'dotenv-rails', '~> 2.2', '>= 2.2.1'
gem 'jwt', '~> 1.5', '>= 1.5.6'
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
gem 'puma', '~> 3.11'
gem 'rack-cors', '~> 0.4.1'
gem 'rails', '~> 5.2.1'
gem 'rmagick', '~> 2.16'
gem 'simple_command', '~> 0.0.9'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
