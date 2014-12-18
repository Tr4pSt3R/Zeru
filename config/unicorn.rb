# root of our Rails application
root = "/home/deploy/zeru/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"

stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.zeru.sock"

# number of rails instances to boot up
worker_processes 2

# Restart app server, if the Rails app doesn't respond within 30secs
timeout 30
