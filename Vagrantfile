Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "my_website"
  config.vm.synced_folder "./src", "/vagrant/src", type: "nfs"
  config.vm.synced_folder "./config", "/vagrant/config", type: "nfs"
  config.vm.synced_folder "./", "/vagrant", type: "nfs"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "forwarded_port", guest: 3306, host: 3306
  config.vm.provider "virtualbox" do |vb|
      # Enable symlinks in vagrant shared folder, https://coderwall.com/p/b5mu2w
      vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
      vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant-root", "1"]
      vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/vagrant", "1"]
    end
  config.vm.provider :virtualbox do |v|
        v.customize ["modifyvm", :id,
                    "--memory", 2048,
                    "--name", "my_website",
                    "--natdnshostresolver1", "on",
                    "--cpuexecutioncap", 50
                    ]
  end
  config.vm.provision :shell, path: "config/provision.sh"
end