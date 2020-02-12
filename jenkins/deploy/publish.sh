#!/bin/bash

export IMAGE=$(sed -n '1p' /tmp/.auth);
export TAG=$(sed -n '2p' /tmp/.auth);

sed -n '3p' /tmp/.auth | docker login -u zelfick --password-stdin
cd ~/maven && docker-compose up -d