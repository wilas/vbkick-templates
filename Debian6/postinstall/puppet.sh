#!/bin/bash
set -e -E -u -o pipefail; shopt -s failglob;

if [[ ! -f "/etc/apt/sources.list.d/puppetlabs.list" ]]; then
    wget -O /tmp/puppetlabs-release-squeeze.deb http://apt.puppetlabs.com/puppetlabs-release-squeeze.deb
    dpkg -i /tmp/puppetlabs-release-squeeze.deb
    rm -f /tmp/puppetlabs-release-squeeze.deb
    apt-get -y update
fi
apt-get install -y hiera puppet facter
