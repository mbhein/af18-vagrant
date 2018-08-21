# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.define "tower" do |tower|
	   tower.vm.box = "ansible/tower"
	   tower.vm.hostname = "tower"
	   tower.vm.network "private_network", ip: "192.168.33.20"
	   tower.vm.network "forwarded_port", guest: 80, host: 8080
	   tower.vm.network "forwarded_port", guest: 8050, host: 8050
	   tower.vm.synced_folder "../../Tower/Manual", "/var/lib/awx/projects/manual", create: true,
	     owner: "awx", group: "awx", mount_options: ["dmode=775"]
	end
	config.vm.define "cent1" do |cent1|
	   cent1.vm.box = "bento/centos-6.9"
	   cent1.vm.hostname = "cent1"
	   cent1.vm.network "private_network", ip: "192.168.33.31"
	end
	config.vm.define "cent7" do |cent7|
	   cent7.vm.box = "centos/7"
	   cent7.vm.hostname = "cent7"
	   cent7.vm.network "private_network", ip: "192.168.33.32"
	end
 end
