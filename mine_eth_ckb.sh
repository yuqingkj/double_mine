#!/bin/sh

# Change the following address to your addresses
ADDRESS=0xb76d43eAaB2e905028a7f0F3aF13C7A84c477B9f
ADDRESS_2=bminergrin

USERNAME=$ADDRESS.w
POOL=eth-us-west1.nanopool.org:9999
# Change SCHEME according to your POOL. For example:
# ethash:     Ethermine, Nanopool
# ethproxy:   F2pool, Sparkpool
# ethstratum: Miningpoolhub
SCHEME=ethash

USERNAME_2=$ADDRESS_2.w
POOL_2=ckb.f2pool.com:4300
SCHEME_2=ckb

./bminer -uri $SCHEME://$USERNAME@$POOL -uri2 $SCHEME_2://$USERNAME_2@$POOL_2 -dual-intensity 15 -dual-subsolver 0 -api 127.0.0.1:1880
