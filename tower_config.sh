#!/usr/bin/env bash

admin_pwd='ansiblefest'


#Set tower-cli
tower-cli config host 192.168.80.20
tower-cli config username admin
tower-cli config password $admin_pwd
tower-cli config verify_ssl false
tower-cli setting modify LICENSE @/vagrant/license.txt
sleep 5
tower-cli credential create -n vagrant --credential-type="Machine" --organization Default --insecure --inputs='{"username":"vagrant","password":"vagrant"}'
tower-cli project create -n Manual --organization Default --scm-type manual --local-path manual_project
tower-cli inventory create -n Manual --organization Default
tower-cli inventory create -n AF18-Inventory --organization Default
tower-cli host create -n localhost -i AF18-Inventory
tower-cli host create -n localhost -i Manual
tower-cli host create -n prodapp1s01 -i Manual
tower-cli host create -n prodapp1s02 -i Manual
