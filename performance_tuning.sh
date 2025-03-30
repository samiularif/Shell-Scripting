#!/bin/bash

#This script clears memory caches and restarts services to free up system resources

#clear memory caches
sync; echo 3 > /proc/sys/vm/drop_caches

#restart services
systemctl restart nginx
systemctl restart apache2

echo "Memory caches cleared and services restarted"

