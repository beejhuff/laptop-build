#!/bin/bash

# Script to bootstrap Ubuntu Server Laptop (based on a minimum 15.10 WILY Server install)
#

/usr/bin/apt-get update
/usr/bin/apt-get -y install laptop-mode-tools python python-pip git
/usr/bin/curl -L https://bootstrap.saltstack.com | /usr/bin/sudo /bin/sh
mkdir -p /git/wicksy/
cd /git/wicksy && /usr/bin/git clone https://github.com/wicksy/laptop-build.git
/bin/ln -sf /git/wicksy/laptop-build/ubuntu/inspiron/salt/roots /srv/salt
/bin/ln -sf /git/wicksy/laptop-build/ubuntu/inspiron/salt/pillar /srv/pillar