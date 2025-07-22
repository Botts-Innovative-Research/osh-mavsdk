#!/bin/bash
podman build -f containerfile_mavsdk_native -t mavsdk:v0.5 . &&
distrobox-create --name mavsdk --image localhost/mavsdk:v0.5

