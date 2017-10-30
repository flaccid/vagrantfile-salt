# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'Ubuntu Xenial'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box'

  config.vm.synced_folder 'salt/roots/', '/srv/salt/'

  config.vm.provision :salt do |salt|
    salt.no_minion = true
    salt.masterless = true
    # salt.minion_config = 'salt/minion'
    salt.run_highstate = true
  end
end
