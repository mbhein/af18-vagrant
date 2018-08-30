#!/usr/bin/env bash

admin_pwd='ansiblefest'


#Set tower-cli
tower-cli config host 192.168.80.20
tower-cli config username admin
tower-cli config password $admin_pwd
tower-cli config verify_ssl false
tower-cli credential create -n vagrant --credential-type="Machine" --organization Default --insecure --inputs='{"username":"vagrant","password":"vagrant"}'
tower-cli setting modify LICENSE @/vagrant/license.txt