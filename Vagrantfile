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
        inline: <<-SHELL
        sudo yum -y install python-pip expect
        sudo pip install ansible-tower-cli
        sudo echo "192.168.80.31    prodapp1s01" >> /etc/hosts
        sudo echo "192.168.80.32    prodapp1s02" >> /etc/hosts
        SHELL
     tower.vm.provision "shell",
        path: "tower_admin.sh"
     tower.vm.provision "shell",
        path: "tower_config.sh"

	end
	config.vm.define "app1_us" do |app1s01|
	   app1s01.vm.box = "centos/7"
	   app1s01.vm.hostname = "prodapp1s01"
	   app1s01.vm.network "private_network", ip: "192.168.80.31"
    app1s01.vm.provision "shell",
       inline: <<-SHELL
        sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
        sudo systemctl restart sshd
        SHELL
	end
#	config.vm.define "app1_uk" do |app1_uk|
#	   app1_uk.vm.box = "centos/7"
#	   app1_uk.vm.hostname = "prodapp1s02"
#	   app1_uk.vm.network "private_network", ip: "192.168.80.32"
#	end
 end
