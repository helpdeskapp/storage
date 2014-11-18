source 'http://rubygems.org'

group :assets do
  gem 'sass-rails'
  gem 'uglifier'
  gem 'turbo-sprockets-rails3'
end

group :default do
  gem 'ancestry'
  gem 'bunny',                          :require => false
  gem 'dragonfly'
  gem 'esp-commons'
  gem 'jquery-rails'
  gem 'rails',                          '~> 3.2.21', :require => false
  gem 'russian'
end

group :development do
  gem 'annotate',                       :require => false
  gem 'brakeman',                       :require => false
  gem 'capistrano-db-tasks',            :git => 'git://github.com/sgruhier/capistrano-db-tasks', :ref => '396cbbf'
  gem 'capistrano-unicorn'
  gem 'openteam-capistrano'
end

group :production do
  gem 'pg',                             :require => false
  gem 'newrelic_rpm'
end

group :test do
  gem 'fabrication',                    :require => false
  gem 'rspec-rails',                    :require => false
  gem 'sqlite3',                        :require => false
  gem 'shoulda-matchers',               :require => false
end
