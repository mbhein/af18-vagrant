#!/usr/bin/expect

set admin_pwd "ansiblefest"

#Set Tower admin password
spawn tower-manage changepassword admin
expect "Changing password for user 'admin'"
expect "Password:"
send "$admin_pwd\r"
expect "Password (again):"
send "$admin_pwd\r"
expect "Password changed successfully for user 'admin'"
expect eof
