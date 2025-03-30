#!/bin/bash

#Variables
DB_USER="postgres"
DB_PASSWORD="password"
DB_NAME="my_database"
MIGRATION_FILE="/path/to/migration.sql"

#Run schema migration
PGPASSWORD=$DB_PASSWORD psql -U $DB_USER -d $DB_NAME -f $MIGRATION_FILE

echo "Database schema migrated successfully"

