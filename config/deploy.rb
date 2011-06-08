set :application, "parra_puma"
set :repository,  "git://github.com/jipumarino/parra_puma.git"
set :deploy_to, "/var/apps/parra_puma"

set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache

role :web, "panda2"
role :app, "panda2"
role :db,  "panda2", :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
