#!/bin/bash
cp /var/lib/jenkins/workspace/onlinebookstore/target/onlinebookstore.war /var/lib/jenkins/workspace/onlinebookstore/
docker build -t project-image .
docker run -d -p 8081:8080 project-image
docker tag project-image ashu80560/project-image
docker push ashu80560/project-image
