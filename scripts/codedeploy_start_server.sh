#!/bin/bash
echo "---------- Start codedeploy_start_server.sh"
sudo touch /var/app_log.txt
sudo chown ec2-user:ec2-user /var/app_log.txt
# need sudo to run on port 80 
sudo /usr/bin/python3 /var/myapp/app.py > /var/app_log.txt 2>&1 &
echo "-------------Started Application"