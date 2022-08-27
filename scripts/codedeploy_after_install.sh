#!/bin/bash
echo "---------- Start codedeploy_after_install.sh"
cd /var
unzip myapp.zip
pip3 install -r requirements.txt
echo "----------  Finished codedeploy_after_install.sh"