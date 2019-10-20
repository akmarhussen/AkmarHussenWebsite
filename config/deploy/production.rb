role :app, %w{root@104.156.237.231}
role :web, %w{root@104.156.237.231}
role :db,  %w{root@104.156.237.231}

set :branch, "master"

set :ssh_options, {
  password: "password",
  forward_agent: false,
  auth_methods: %w(password)
}

server '104.156.237.231', user: 'root', roles: %w{app}

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence do
      sudo "/etc/init.d/apache2 restart"
    end
  end

  after :publishing, :restart
end