#!/bin/sh
sudo yum update
sudo yum install git
sudo yum install terraform
sudo yum install -y yum-utils shadow-utils$ sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo$ 
sudo yum -y install terraform
sudo yum install docker
