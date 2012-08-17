# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  config.vm.customize ["modifyvm", :id, "--memory", "1024"]

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Assign this VM to a host-only network IP, allowing you to access it
  # via the IP. Host-only networks can talk to the host machine as well as
  # any other machines on the same network, but cannot be accessed (through this
  # network interface) by any external networks.
  # config.vm.network :hostonly, "192.168.33.10"

  # Assign this VM to a bridged network, allowing you to connect directly to a
  # network using the host's network device. This makes the VM appear as another
  # physical device on your network.
  config.vm.network :bridged

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  # config.vm.forward_port 80, 8080

  # Share an additional folder to the guest VM. The first argument is
  # an identifier, the second is the path on the guest to mount the
  # folder, and the third is the path on the host to the actual folder.
  # config.vm.share_folder "v-data", "/vagrant_data", "../data"

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding 
  # some recipes and/or roles.
  
   config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = "./cookbooks"
     chef.roles_path = "./roles"
     chef.data_bags_path = "./data_bags"
     chef.add_recipe "build-essential"
     chef.add_recipe "yum"
     chef.add_recipe "git"
     chef.add_recipe "vim"
     chef.add_recipe "tmux"
     chef.add_recipe 'dotfiles'
     chef.add_recipe "openssl"
     #chef.add_recipe "postgresql"
     chef.add_recipe "rvm_prereq"
     chef.add_recipe "rvm::user"
     chef.add_recipe "wemux"
     chef.add_recipe "user::data_bag"
     #chef.add_role "web"
  
     # You may also specify custom JSON attributes:
     chef.json = { 
       'rvm' => {
         'user_installs' => [{
            'user' => 'vagrant',
            'default_ruby' => '1.9.3'}],
         'user_rubies' => ['1.9.3'],
         'user_global_gems' => ['name' => 'bundler', 'name' => 'rake' ]
       },
       'users' => ['visitor']
     }

   end

  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # IF you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
