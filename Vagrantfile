# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'.freeze

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'Ubuntu Xenial'
  config.vm.box_url = 'http://cloud-images.ubuntu.com/xenial/current/xenial-server-cloudimg-amd64-vagrant.box'

  config.vm.synced_folder 'salt/roots/', '/srv/salt/', SharedFoldersEnableSymlinksCreate: false

  # ensure salt-common is installed
  config.vm.provision 'shell', path: 'install_salt_base.sh'

  config.vm.provision :salt do |salt|
    salt.install_type = 'stable'
    salt.install_master = false
    salt.always_install = false
    salt.no_minion = true
    salt.masterless = true
    salt.run_highstate = true

    # salt.minion_config = 'salt/minion'

    salt.bootstrap_options = '-P'
    salt.colorize = true
    # salt.verbose = true
    # salt.log_level = 'debug'
  end
end
