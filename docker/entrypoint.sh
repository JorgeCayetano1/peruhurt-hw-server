#!/bin/bash

# Navigate to the server directory
cd /home/steam/hurtworld

# Start the Hurtworld server
./Hurtworld.x86_64 -batchmode -nographics -exec "host 12871;queryport 12881;servername <color=#ff0000> [PERU] </color><color=#ffffff> HURT </color><color=#ff0000> [LATINO] </color><color=#ffffff> [X3/TP/KIT/] </color><color=#f1c40f> Unete a nuestra comunidad! </color>;maxplayers 60;autowipe 1;wipeinterval 1209600" -logfile "gamelog.txt"