#!/bin/bash
# run the mavsdk container
distrobox enter mavsdk -- mavsdk_server "$@"
