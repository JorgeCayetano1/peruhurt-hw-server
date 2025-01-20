#!/bin/bash

# Navigate to the server directory
cd /home/steam/hurtworld

# Start the Hurtworld server
./Hurtworld.x86_64 -batchmode -nographics -exec "host 12871;queryport 12881;servername [PERU]HURT;maxplayers 60" -logfile "gamelog.txt"