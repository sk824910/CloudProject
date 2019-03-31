#!/bin/bash

set -x
sudo apt-get update
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common tmux
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose
sudo apt-get install -y httping
sudo apt-get install -y jq

# the username needs to be changed
sudo usermod -aG docker lngo

sudo git clone https://github.com/linhbngo/autolab-oneclick.git
cd autolab-oneclick
sudo chmod 755 install.sh
sudo ./install.sh -l
sleep 20
sudo su -c 'docker exec -it local_tango_1 bash -c "cd vmms ; docker build -t autograding_image ."'
sudo su -c 'docker exec -it local_tango_1 bash -c "cd vmms/java_grader ; docker build -t java_image ."'
