#!/usr/bin/env bash
sudo su -
pip install tower-cli
tower-cli config host 192.168.80.20
tower-cli username admin
tower-cli password ansiblefest
tower-cli config verify_ssl false
# TODO tower-cli credential create machine vagrant password vagrant
