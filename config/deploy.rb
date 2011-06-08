$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
require 'rvm/capistrano'
set :rvm_ruby_string, '1.9.2-p0@rails-3.1'

set :application, "parra_puma"
set :repository,  "git://github.com/jipumarino/parra_puma.git"
set :deploy_to, "/var/apps/parra_puma"

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache

role :web, "panda2"
role :app, "panda2"
role :db,  "panda2", :primary => true

after "deploy:update_code", "deploy:bundle_install"

namespace :deploy do
  task :bundle_install, :roles => :app do
    run "cd #{release_path} && bundle install"
  end

  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "chown nginx:nginx -R #{release_path}"
    run "cd #{release_path} && passenger stop -p 3001 && sleep 5 && passenger start -p 3001 -d -e production"
  end
end
