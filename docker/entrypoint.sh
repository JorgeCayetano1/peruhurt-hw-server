#!/bin/bash

# Navigate to the server directory
cd /home/steam/hurtworld

# Start the Hurtworld server
./Hurtworld.x86_64 -batchmode -nographics -exec "host 12871;queryport 12881;servername <color=#ff0000>[PERU]</color> HURT [LATINO] [X3/TP/KIT] | Unete a nuestra comunidad!;maxplayers 60;autowipe 1;wipeinterval 1209600" -logfile "gamelog.txt"