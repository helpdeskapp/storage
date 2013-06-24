require 'openteam/capistrano/recipes'

set :shared_children, fetch(:shared_children) + %w[.files tmp/cache config/newrelic.yml]
set :repository,  'git@bitbucket.org:tukhfatullin/storage.git'
set :default_stage, 'do1'
