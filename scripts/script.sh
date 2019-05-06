#!/bin/bash
RPM="$(which rpm)"
YUM="$(which yum)"
WGET="$(which wget)"

if $RPM -q wget
then
    echo "wget is already installed, skipping..."
else
    $YUM -y install wget
fi

if $RPM -q inspec
then
    echo "inspec is already installed, skipping..."
else
    $WGET -q https://packages.chef.io/files/stable/inspec/4.3.2/el/7/inspec-4.3.2-1.el7.x86_64.rpm -O /tmp/inspec-4.3.2-1.el7.x86_64.rpm
    $RPM -i /tmp/inspec-4.3.2-1.el7.x86_64.rpm
fi

if $RPM -q puppet-agent
then
    echo "puppet-agent is already installed, skipping..."
else
    $WGET -q https://yum.puppetlabs.com/puppet6/puppet6-release-el-7.noarch.rpm -O /tmp/puppet6-release-el-7.noarch.rpm
    $RPM -i /tmp/puppet6-release-el-7.noarch.rpm
    $YUM -y install puppet-agent
fi
