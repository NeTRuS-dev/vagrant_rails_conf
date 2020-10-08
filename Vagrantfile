# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.network 'private_network', type: 'dhcp'
  config.vm.network :forwarded_port, guest: 3000, host: 3000    # rails
  config.vm.network :forwarded_port, guest: 9292, host: 9292    # rack
  config.vm.network :forwarded_port, guest: 1234, host: 1234    # node
  config.vm.network :forwarded_port, guest: 5432, host: 5433    # postgresql

  config.vm.synced_folder ".", "/vagrant_shared"

  
  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    # vb.memory = "2048"
    # v.cpus = 2
  end
  
  config.vm.provision :shell, :path => 'as_root.sh', :privileged => true
  config.vm.provision :shell, :path => 'as_vagrant.sh', :privileged => false
end
