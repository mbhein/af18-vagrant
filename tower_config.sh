#!/usr/bin/env bash

admin_pwd='ansiblefest'

#Set Tower admin password
spawn tower-manage changepassword admin
expect "password: "
send "$admin_pwd"
#Set tower-cli
tower-cli config host 192.168.80.20
tower-cli config username admin
tower-cli config password $admin_pwd
tower-cli config verify_ssl false
# TODO tower-cli credential create machine vagrant password vagrant
