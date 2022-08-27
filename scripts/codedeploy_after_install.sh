#!/bin/bash
echo "This message is from codedeploy_after_install.sh"
cd /var
unzip myapp.zip
pip3 install -r requirements.txt