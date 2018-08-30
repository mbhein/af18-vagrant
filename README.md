# ansiblefest18-vagrant
AnsibleFest18 Vagrant Files


Tower License File
------------
1. Supply your own Tower license file
2. Place in root of Vagrant folder and rename it: license.txt
3. Add EULA_ACCEPTED key to import via tower-cli

        "subscription_name": "Red Hat Ansible Tower, Self-Support (10 Managed Nodes)",
        "eula_accepted": "true"
    *Make sure to add a trailing ',' to the key above "eula_accepted" as shown above