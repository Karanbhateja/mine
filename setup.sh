sudo apt install -y build-essential cmake libuv1-dev libssl-dev wget tar

# Download and extract XMRig

wget https://github.com/xmrig/xmrig/releases/download/v6.22.0/xmrig-6.22.0-jammy-x64.tar.gz
tar -xzf xmrig-6.22.0-jammy-x64.tar.gz
cd xmrig-6.22.0

# Setup configuration (make sure you replace this with your actual configuration)
# You should create a config.json file or adjust this script as needed

# wget https://raw.githubusercontent.com/karanbhateja/mine/main/config.json

# Start mining
./xmrig -o pool.supportxmr.com:443 -u 47qUtr22oGDgGsYbfUBKfpbyRa5NqTCcR9m4bP2w3jiD3XC1RZ2bKTiVLaqi9wcP4FB8he1XT461J6aPjH6gxw7cU7GQsh3 -k --tls
# ./xmrig
