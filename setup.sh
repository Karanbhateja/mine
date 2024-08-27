sudo apt install -y build-essential cmake libuv1-dev libssl-dev wget tar

# Download and extract XMRig

wget https://github.com/xmrig/xmrig/releases/download/v6.22.0/xmrig-6.22.0-jammy-x64.tar.gz
tar -xzf xmrig-6.22.0-jammy-x64.tar.gz
cd xmrig-6.22.0-jammy-x64

# Setup configuration (make sure you replace this with your actual configuration)
# You should create a config.json file or adjust this script as needed

wget https://raw.githubusercontent.com/karanbhateja/mine/main/config.json

# Start mining
# ./xmrig
