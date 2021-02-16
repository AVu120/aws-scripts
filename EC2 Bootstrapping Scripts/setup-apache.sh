#!/bin/bash
# Purpose: install & run httpd (Apache Web Server - Linux 2 version)
# How: Copy and paste the contents of this file into the 'Step 3: Configure Instance Details > Advanced Details > User Data > As text' section when launching a new EC2 instance.
# This script will immediately execute when the EC2 instance starts running. 
# Each line will be automatically run with the sudo command.
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello World from $(hostname -f)" > /var/www/html/index.html
