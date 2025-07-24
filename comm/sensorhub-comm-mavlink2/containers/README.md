#### Ardupilot SITL and MAVSDK Containers 

## Building
./build.sh

This script builds both containers and the binaries inside the containers

The containers are each an Ubuntu image with the proper stuff inside. The are podman containers that can run with 
Distrobox or Podman Desktop. 

The containers are best run inside of a Linux environment.

## Running
An example run.sh is provided for each

./ardupilot/run.sh 

./mavsdk_native/run.sh 

## Tested on a VM of Fedora Kinoite ARM64 (Mac)
NAME="Fedora Linux"
VERSION="42.20250723.0 (Kinoite)"
RELEASE_TYPE=stable
ID=fedora
VERSION_ID=42
VERSION_CODENAME=""
PLATFORM_ID="platform:f42"
PRETTY_NAME="Fedora Linux 42.20250723.0 (Kinoite)"
VARIANT="Kinoite"
VARIANT_ID=kinoite
OSTREE_VERSION='42.20250723.0'

