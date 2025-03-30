#!/bin/bash

#Variables
OPEN_PORTS=$(netstat -tuln)

#Check if any ports are open
if [[ $OPEN_PORTS =~ "0.0.0.0" || $OPEN_PORTS =~ "127.0.0.1"]]; then
    echo "Security Alert: Open ports detected!"
    echo "$OPEN_PORTS" | mail -s "Security Alert" user@example.com
else
    echo "No open ports detected"
fi  
