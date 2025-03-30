#!/bin/bash

# set enviornment variables for different stages

if ["$1" == "production"]; then
    export DB_HOST="prod-db.example.com"
    export API_KEY="prod-api-key"
elif ["$1" == "staging"]; then
    export DB_HOST="staging-db.example.com"
    export API_KEY="staging-api-key"
else
    export DB_HOST="dev-db.example.com"
    export API_KEY="dev-api-key"
fi