#!/bin/bash

#Variables
DB_USER="root"
DB_PASSWORD="password"
DB_NAME="mydatabase"
BACKUP_DIR="/backup"
DATE=$(date +%F)

#Create backup directory
mkdir -p $BACKUP_DIR

#Backup database
mysqldump -u $DB_USER -p$DB_PASSWORD $DB_NAME > $BACKUP_DIR/backup_$DATE.sql

#Compress backup
gzip $BACKUP_DIR/backup_$DATE.sql

echo"Backup completed"
