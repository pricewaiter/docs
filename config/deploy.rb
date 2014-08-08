set :application, "pricewaiter-docs"

set :deploy_via, :copy
set :repository, "_site"
set :scm, :none
set :copy_compression, :gzip
set :use_sudo, false
set :copy_remote_dir, "/home/docs/"
set :user, "docs"
set :deploy_to, "/home/docs/www/"

role :web, "river.pricewaiter.com"                          # Your HTTP server, Apache/etc

# Override default tasks which are not relevant to a non-rails app.
namespace :deploy do
  task :migrate do
    puts "    Not doing migrate because we are not a Rails application."
  end
  task :finalize_update do
    puts "    Not doing finalize_update because we are not a Rails application."
  end
  task :start do ; end
  task :stop do ; end
  task :restart do ; end
end
