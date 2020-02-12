#!/bin/bash

echo jenkinsmvnproject > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASSWORD >> /tmp/.auth

scp -i /home/jorgeherran/Documents/jenkins/data/HostProd /tmp/.auth ProdJenk@192.168.99.100:/tmp/.auth
scp -i /home/jorgeherran/Documents/jenkins/data/HostProd ./jenkins/deploy/publish.sh ProdJenk@192.168.99.100:~/maven/publish.sh

ssh -i /home/jorgeherran/Documents/jenkins/data/HostProd ProdJenk@192.168.99.100 "~/maven/publish.sh"