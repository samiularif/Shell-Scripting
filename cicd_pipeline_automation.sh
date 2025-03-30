#!/bin/bash

#Jenkins details
JENKINS_URL="http://jenkins.example.com"
JOB_NAME="your-jenkins-job-name"
JENKINS_USER="jenkins-user"
API_TOKEN="your-jenkins-api-token"

#Trigger jenkins job
curl -X POST "$JENKINS_URL/job/$JOB_NAME/build" --user "$USER:$API_TOKEN"

echo "Jenkins job triggered successfully"
