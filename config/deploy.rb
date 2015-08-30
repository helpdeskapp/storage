require 'openteam/capistrano/recipes'

set :shared_children, fetch(:shared_children) + %w[.files tmp/cache config/newrelic.yml]
set :repository,  'git@github.com:helpdeskapp/storage.git'
set :default_stage, 'docker'
