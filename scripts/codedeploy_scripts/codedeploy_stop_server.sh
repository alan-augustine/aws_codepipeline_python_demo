#!/bin/bash
echo "------------- Start codedeploy_stop_server.sh"
# Kill Flask Server process
sudo pkill python3
echo "------------- End codedeploy_stop_server.sh"