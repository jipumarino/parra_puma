set :application, "ParraPuma"
set :repository,  "git://github.com/jipumarino/parra_puma.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "panda2"                          # Your HTTP server, Apache/etc
role :app, "panda2"                          # This may be the same as your `Web` server
role :db,  "panda2", :primary => true # This is where Rails migrations will run
role :db,  "panda2"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
