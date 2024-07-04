#!/bin/bash

echo "Starting redis, mongod en ximera"

echo "$(date +%F_%X) Starting redis, mongod en ximera" >>/usr/var/server/repositories/start.history

LOGFILE=/usr/var/server/repositories/start.$(date +%Y%m%d_%H%M%S).log

redis-server &
mongod &

sleep 5 # give mongo time to start ...

echo "Starting npm"
npm run start 2>&1 | tee $LOGFILE
