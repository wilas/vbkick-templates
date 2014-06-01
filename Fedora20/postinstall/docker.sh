#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Install docker-io
yum -y install docker-io
if ! systemctl status docker > /dev/null; then
    systemctl start docker
    systemctl enable docker
fi

# Quick test
# sudo lxc-checkconfig
# sudo systemctl status docker
# sudo docker info
# sudo docker run -i -t ubuntu /bin/bash
# sudo docker run -dns 8.8.8.8 centos ping google.com
