PORT=8588
DISCOVER=1
SYNC_MODE=archive
GWEMIX_OPTS="--txpool.nolocals --metrics --metrics.expensive --metrics.addr 127.0.0.1 --snapshot=false --maxpeers=100 --http.api=eth,net,web3,personal,debug,txpool --ws.api=eth,net,web3,txpool,debug --http.vhosts=* --ws.origins=*"

# Delete the nodekey if it exists (aks pv copy)
NODEKEY_PATH="/data/wemix/geth/nodekey"

if [ -f "$NODEKEY_PATH" ]; then
  rm -f "$NODEKEY_PATH"
fi
