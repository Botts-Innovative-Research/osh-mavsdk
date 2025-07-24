#!/bin/bash
# run the ardupilot container
distrobox enter ardupilot -- bash -c "export HOME=/home/ardupilot && source /home/ardupilot/venv-ardupilot/bin/activate && cd ardupilot && ./Tools/autotest/sim_vehicle.py -v ArduCopter -f quad --console --map --instance 0 --sysid 1 --out udp:127.0.0.1:14551"
