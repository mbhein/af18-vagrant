#!/usr/bin/expect

set admin_pwd "ansiblefest"

#Set Tower admin password
spawn tower-manage changepassword admin
expect "Password:"
send "$admin_pwd"
