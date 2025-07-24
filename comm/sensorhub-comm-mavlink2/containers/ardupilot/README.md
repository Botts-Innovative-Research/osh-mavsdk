#### Building Ardupilot SITL Containers 

These scripts build a container for Ardupilot SITL 

The container is an Ubuntu image with the proper ardupilot stuff inside. It's a podman container that can run with 
Distrobox or Podman Desktop. This script currently builds the Distrobox container.

An example run.sh is provided that will run the container.

./ardupilot_distrobox.sh
./run.sh 
