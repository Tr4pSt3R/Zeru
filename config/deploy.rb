# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'zeru'
set :repo_url, 'git@github.com:Tr4pSt3R/Zeru.git'

# Setup RVM
set :rbenv_type, :system
set :rbenv_ruby, '2.0.0-p247'
set :rbenv_prefix, "RBENV_ROOT=#{fetch(:rbenv_path)} RBENV_VERSION=#{fetch(:rbenv_ruby)} #{fetch(:rbenv_path)}/bin/rbenv exec"
set :rbenv_map_bins, %w{rake gem bundle ruby rails}

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }

# Default deploy_to directory is /var/www/my_app
# set :deploy_to, '/var/www/my_app'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# what specs should be run before deloyment is allowed to
# continue, see lib/capistrano/tasks/run_tests.cap
set :tests, ["spec"]

# Default value for keep_releases is 5
set :keep_releases, 5

# which config files should be copied by deploy:setup_config 
# see documentation in lib/capistrano/tasls/setup_config.cap 
# for details of operations
set(:config_files, %w( database.example.yml ))

# which config files should be made executable after copying
# by deploy:setup_config
# set(:executable_config_files, %w(
#   unicorn_init.sh
# ))

namespace :deploy do
  before :starting, :set_rails_env do 
    set :rails_env, (fetch(:rails_env) || fetch(:stage))
  end

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
      # invoke 'unicorn:reload'
    end
    
    # invoke 'unicorn:reload'
  end

  task :setup_config do
    on roles(:app) do
       #some stuff
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end
