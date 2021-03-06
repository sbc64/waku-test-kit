source ./common.sh

./result/bin/wakunode \
  --rpc-admin \
  --keep-alive \
  --topics="/waku/2/walletconnect-staging/proto" \
  --nat=none \
  --nodekey=${two[0]} \
  --swap=false \
  --rpc=true \
  --rpc-address=0.0.0.0 \
  --rpc-port=${two[3]} \
  --tcp-port=${two[2]} \
  --relay=true  \
  --storenode=/ip4/127.0.0.1/tcp/${store[2]}/p2p/${store[1]} \
  --filternode=/ip4/127.0.0.1/tcp/${store[2]}/p2p/${store[1]} \
  --staticnode=/ip4/127.0.0.1/tcp/${store[2]}/p2p/${store[1]} \
  --staticnode=/ip4/127.0.0.1/tcp/${one[2]}/p2p/${one[1]} \
  #--staticnode=/ip4/127.0.0.1/tcp/${three[2]}/p2p/${three[1]} \
