#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

# Install the new linux kernel and headers from backports
apt-get -y install -t wheezy-backports linux-image-amd64 linux-headers-amd64

# NB1: AUFS is included in the kernels built by the Debian and Ubuntu distributions,
# is not a part of the standard kernel, more: http://docs.docker.io/en/latest/installation/kernel/#kernel
