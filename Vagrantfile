Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provision "shell", :path => "provision.sh"
  config.vm.synced_folder ".", "/vagrant", :mount_options => ['dmode=775', 'fmode=664']
  config.vm.network "forwarded_port",  guest: 80,  host: 80
  config.vm.network "forwarded_port",  guest: 9300,  host: 9300

  # proxy settings. vagrant-proxyconf
  #
  # config.proxy.http = "http://proxy.host:port/"
  # config.proxy.https = "http://proxy.host:port/"
  # config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
 
  # change the repository to japan iij.
  #
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo sed -i.bak -e "s%http://us.archive.ubuntu.com/ubuntu/%http://ftp.iij.ad.jp/pub/linux/ubuntu/archive/%g" /etc/apt/sources.list
  # SHELL
end
