#!/bin/bash
sudo yum update -y
sudo yum install -y ruby
sudo yum install -y wget
cd /home/ec2-user
wget https://aws-codedeploy-us-east-2.s3.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent status
# Python3 & pip are  already present in Amazon Linux
