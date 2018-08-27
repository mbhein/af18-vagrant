# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.define "tower" do |tower|
	    tower.vm.box = "ansible/tower"
	    tower.vm.hostname = "tower"
	    tower.vm.network "private_network", ip: "192.168.80.20"
	    tower.vm.network "forwarded_port", guest: 80, host: 8080
	    tower.vm.network "forwarded_port", guest: 8050, host: 8050
	    tower.vm.synced_folder "manual_project", "/var/lib/awx/projects/manual_project", create: true,
            owner: "awx", group: "awx", mount_options: ["dmode=775"]
        tower.vm.provision "shell",
           inline: "sudo yum install python-pip | yes "
        tower.vm.provision "shell",
           inline: "sudo pip install tower-cli"
        tower.vm.provision "shell",
           inline: "sudo /vagrant/tower_config.sh"

	end
#	config.vm.define "app1_us" do |app1_us|
#	   app1_us.vm.box = "centos/7"
#	   app1_us.vm.hostname = "app1_us"
#	   app1_us.vm.network "private_network", ip: "192.168.80.31"
#	end
#	config.vm.define "app1_uk" do |app1_uk|
#	   app1_uk.vm.box = "centos/7"
#	   app1_uk.vm.hostname = "app1_uk"
#	   app1_uk.vm.network "private_network", ip: "192.168.80.32"
#	end
 end
