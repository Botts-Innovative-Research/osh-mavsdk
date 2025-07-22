#!/bin/bash
# ***************************** BEGIN LICENSE BLOCK ***************************
# 
#  The contents of this file are subject to the Mozilla Public License, v. 2.0.
#  If a copy of the MPL was not distributed with this file, You can obtain one
#  at http://mozilla.org/MPL/2.0/.
#  
#  Software distributed under the License is distributed on an "AS IS" basis,
#  WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
#  for the specific language governing rights and limitations under the License.
# 
#  Copyright (C) 2025 Botts Innovative Research. All Rights Reserved.
# 
# ******************************* END LICENSE BLOCK ***************************

set -e

#update/upgrade the system
apt update && apt upgrade -y
wait
echo "Sys update/upgrade done"

# install build tools
apt-get install build-essential cmake git zip unzip python3-pip lsb-release fontconfig -y
wait
echo "pre-req tools installed"

# Clone Ardupilot
cd ..
git clone https://github.com/ArduPilot/ardupilot.git
wait
echo "ardupilot cloned"

# Install Ardupilot prereqs
cd ardupilot
Tools/environment_install/install-prereqs-ubuntu.sh -y
wait
echo "ardupilot pre-reqs installed"

#reload path
. ~/.profile
wait
echo "path reloaded"

# Add Taiwan as pre-defined location in Ardupilot
echo "Taiwan=24.178772,120.649633,0,0" >> Tools/autotest/locations.txt
echo "Taiwan2=24.178772,120.648633,0,0" >> Tools/autotest/locations.txt
echo "Taiwan3=24.178772,120.647633,0,0" >> Tools/autotest/locations.txt
wait
echo "Taiwan added as location to Ardupilot"

# Add additional mav out
mkdir ~/.mavproxy
wait
echo ".mavproxy directory created"

touch ~/.mavproxy/mavinit.scr
wait
echo "mavinit.scr created"

echo "output add 127.0.0.1:14540" >> ~/.mavproxy/mavinit.scr
echo "output add 127.0.0.1:14560" >> ~/.mavproxy/mavinit.scr
echo "output add 127.0.0.1:14550" >> ~/.mavproxy/mavinit.scr
echo "outputs added to mavinit.scr"
