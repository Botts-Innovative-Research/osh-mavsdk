#!/bin/bash
# run the mavsdk container
distrobox enter ardupilot -- mavsdk_server "$@"
