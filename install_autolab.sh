#!/usr/bin/env bash

sudo apt-get install -y sendmail

sudo git clone https://github.com/linhbngo/autolab-oneclick.git

cd autolab-oneclick

sudo ./install.sh -l
