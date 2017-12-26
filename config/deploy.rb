# config valid for current version and patch releases of Capistrano
lock "~> 3.10.0"
set :application, "akmarhussen"
set :repo_url, "git@github.com:akmarhussen/akmarhussen.git"
set :deploy_to, "/var/www/akmarhussen"

set :keep_releases, 3

