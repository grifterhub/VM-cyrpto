#!/bin/bash
echo "starting"
echo "updating"
apt-get update
echo "installing"
apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/build
cmake ..
make -j$(nproc)
echo "getting config.json"
wget https://raw.githubusercontent.com/grifterhub/VM-cyrpto/main/config.json
echo "running xmrig"
sudo ./xmrig 