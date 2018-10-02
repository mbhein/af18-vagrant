# ansiblefest18-vagrant
AnsibleFest18 - Jenkins and Tower Integration Session Vagrant Files


Clone Git Repository
------------
Clone https://github.com/mbhein/af18-vagrant.git

Tower License File
------------
1. Supply your own Tower license file
2. Place in root of Vagrant folder and rename it: license.txt
3. Add EULA_ACCEPTED key to import via tower-cli

        "subscription_name": "Red Hat Ansible Tower, Self-Support (10 Managed Nodes)",
        "eula_accepted": "true"
    *Make sure to add a trailing ',' to the key above "eula_accepted" as shown above


Standing Up Environment
------------
1. Install Vagrant (https://www.vagrantup.com/downloads.html)
2. Install Oracle Virtualbox (you could use another type-2 hypervisor, just alter Vagrantfile to reflect the hypervisor you are using)
3. Open terminal of your choice (environment runs on both Windows and Mac) to directory you cloned Git repo into
4. Startup environment (Tower instance, 2 CENTOS7 hosts, and Docker running in a container)
        
        vagrant up


Environment
-----------
Tower: https://192.168.80.20 u:admin p:ansiblefest
Jenkins: http://192.168.80.40:8080 (you will need to manually setup Jenkins)

See tower_config.sh for what items are setup/created in Tower

Still TODO (do manually for now):
- Script creation of AF18-Project project and use https://github.com/mbhein/af18-project.git as SCM source
- Script setting up templates from playbooks in AF18-Project 


Tower/Jenkins Integration
--------------
1. In Tower create jenkins-int user w/ password ansiblefest
2. In Jenkins
    - Add Ansible Tower plugin
    - In Configuration System -> Ansible Tower -> Add Tower Installation
    - Name: AF-Tower
    - URL: https://192.168.80.20
    - Add credentials jenkins-int:ansiblefest
    - Check Force Trust Cert
    

