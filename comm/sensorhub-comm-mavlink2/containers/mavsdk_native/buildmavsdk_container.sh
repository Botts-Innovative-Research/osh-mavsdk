#!/bin/bash
podman build -f Containerfile -t mavsdk:v0.6 . &&
distrobox-create --name mavsdk --image localhost/mavsdk:v0.6

