source ./common.sh

# --topics=/waku/2/walletconnect-staging/proto \
./result/bin/wakunode \
  --rpc-admin \
  --keep-alive \
  --topics="/waku/2/walletconnect-staging/proto" \
  --nat=none \
  --nodekey=${one[0]} \
  --swap=false \
  --rpc=true \
  --rpc-address=0.0.0.0 \
  --rpc-port=${one[3]} \
  --tcp-port=${one[2]} \
  --relay=true \
  --storenode=/ip4/127.0.0.1/tcp/${store[2]}/p2p/${store[1]} \
  --filternode=/ip4/127.0.0.1/tcp/${store[2]}/p2p/${store[1]} \
  --staticnode=/ip4/127.0.0.1/tcp/${store[2]}/p2p/${store[1]} \
  --staticnode=/ip4/127.0.0.1/tcp/${two[2]}/p2p/${two[1]} \
  #--staticnode=/ip4/127.0.0.1/tcp/${three[2]}/p2p/${three[1]}
