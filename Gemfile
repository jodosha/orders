# frozen_string_literal: true

source "https://rubygems.org"

gem "rake"
gem "hanami-validations", "~> 2.0.alpha", git: "https://github.com/hanami/validations.git", branch: "unstable"
gem "hanami",             "~> 1.3",       git: "https://github.com/hanami/hanami.git",      branch: "master"

gem "rom",     "~> 5.0"
gem "rom-sql", "~> 3.0"

gem "sqlite3"

group :development do
  # Code reloading
  # See: https://guides.hanamirb.org/projects/code-reloading
  gem "shotgun", platforms: :ruby
  gem "hanami-webconsole"
end

group :test, :development do
  gem "dotenv", "~> 2.4"
end

group :test do
  gem "rspec"
  gem "capybara"
end

group :production do
  # gem 'puma'
end
