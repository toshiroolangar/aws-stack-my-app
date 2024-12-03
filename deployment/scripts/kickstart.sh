#!/bin/bash
#Install Code Deploy Agent
sudo yum update
sudo yum install ruby wget

CODEDEPLOY_BIN="/opt/codedeploy-agent/bin/codedeploy-agent"
$CODEDEPLOY_BIN stop
yum erase codedeploy-agent -y

cd /home/ec2-user
wget https://aws-codedeploy-us-east-2.s3.us-east-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
systemctl status codedeploy-agent
systemctl start codedeploy-agent
systemctl enable codedeploy-agent

#Install Docker
sudo yum install -y docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker

