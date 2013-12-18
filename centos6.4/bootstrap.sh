#!/usr/bin/env bash

cp /vagrant/hosts /etc/hosts
cp /vagrant/resolv.conf /etc/resolv.conf
rpm -i /vagrant/epel-release-6-8.noarch.rpm
yum clean all
yum install vim ntp pdsh pdsh-mod-genders -y
service ntpd start
service iptables stop
chkconfig iptables off
