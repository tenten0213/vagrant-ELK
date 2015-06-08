Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", :path => "provision.sh"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
  config.vm.network "forwarded_port",  guest: 80,  host: 80
  config.vm.network "forwarded_port",  guest: 9300,  host: 9300
  # config.proxy.http = "http://proxy.host:port/"
  # config.proxy.https = "http://proxy.host:port/"
  # config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
end
