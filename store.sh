source ./common.sh

mkdir store

./result/bin/wakunode \
  --keep-alive \
  --nodekey=$store[0] \
  --keep-alive=true \
  --swap=false \
  --rln-relay=false \
  --rpc=false \
  --relay=true \
  --store=true \
  --persist-messages=true \
  --filter=true \
  --db-path=./db \
  --topics="/waku/2/walletconnect-staging/proto"
