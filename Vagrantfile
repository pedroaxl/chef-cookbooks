# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.forward_port 3000, 3000
  #config.vm.forward_port 1080, 1080

  config.vm.provision :chef_solo do |chef|
    chef.recipe_url = "https://github.com/pedroaxl/chef-cookbooks/raw/master/chef-solo.tar.gz"

    chef.add_recipe "locale-gen"
    chef.add_recipe "postgresql::libpq"
    chef.add_recipe "postgresql::server"
    chef.add_recipe "postgresql::contrib"
#    chef.add_recipe "nginx"
    chef.add_recipe "rvm::vagrant"
    chef.add_recipe 'rvm::system'
    chef.add_recipe "vim"
    chef.add_recipe "xslt"
    chef.add_recipe "nodejs::install_from_package"
    #chef.add_recipe "imagemagick::devel"
    #chef.add_recipe "redisio::install"
    #chef.add_recipe "redisio::enable"
    #chef.add_recipe "sqlite-dev"
    #chef.add_recipe "zip"
    #chef.add_recipe "rar"
    #chef.add_recipe "memcached"

     chef.json = { 
       localegen: {lang:['en_US','en_US.utf8','pt_BR','pt_BR.utf8' ]}, 
       rvm: { ruby: {implementation: "ruby", version:"1.9.2"},
              global_gems: [{ name: 'thin' }, {name: 'bundler'}],
              vagrant: {system_chef_solo: '/opt/vagrant_ruby/bin/chef-solo'}
              },
        nginx: {
          distribution: 'precise',
          components: ['main'],
          apps: {
            magickly: {
              listen: [80],
              locations: [
                {path: '@magickly',
                 directives: ["proxy_set_header X-Forwarded-Proto $scheme;","proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;","proxy_set_header X-Real-IP $remote_addr;","proxy_set_header Host $host;","proxy_redirect off;","proxy_http_version 1.1;","proxy_set_header Connection '';","proxy_pass http://magickly;"]}
              ],
              try_files:   ['$uri @magickly'],
              upstreams: [{name: 'magickly', servers: ['127.0.0.1:3000','127.0.0.1:3001']}]
              }
            }
          }
        }
   end
  config.vm.provision :shell, inline: "cd /vagrant && bundle install"  
  config.vm.provision :shell, inline: "cd /vagrant && bundle exec rails s -d"

end
