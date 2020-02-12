#!/bin/bash
#copy the new jar to the build location inside /jenkins/build
cp -f java-app/target/*.jar /jenkins/build/

echo "*********************************************"
echo "***********Building Docker Image*************"
echo "*********************************************"

# get into the path and build the new image from a compose file
cd jenkins/build/ && docker-compose -f composebuildjava.yml build --no-cache

#you just need to call the script ./jenkins/build/build.sh from /home/jorgeherran/Documents/jenkins/data/pipeline