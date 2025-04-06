#!/bin/bash

#This script checks logs for error and send a slack notification if an error is found

if grep -i "error" /var/log/myapp.log ; then
    curl -X POST -H 'Content-type: application/json' --data '{"text":"Error found in logs!"}' https://hooks.slack.com/services/your/webhook/url
fi
