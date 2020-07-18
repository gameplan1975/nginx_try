#rails_root = File.expand_path('../../', __FILE__)

#worker_processes 2
#working_directory rails_root

#listen "#{rails_root}/tmp/unicorn.sock"
#pid "#{rails_root}/tmp/unicorn.pid"

#stderr_path "#{rails_root}/log/unicorn_error.log"
#stdout_path "#{rails_root}/log/unicorn.log"

require 'fileutils'
preload_app true
timeout 5
worker_processes 4
listen '/tmp/nginx.socket', backlog: 1024

before_fork do |server,worker|
	FileUtils.touch('/tmp/app-initialized')
end