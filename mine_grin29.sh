#!/bin/sh

# Change the following address to your GRIN addr.
ADDRESS=yuqingkj@gmail.com
USERNAME=$ADDRESS%2FGreen
POOL=grin.sparkpool.com:6666
SCHEME=cuckaroo29m

./bminer -uri $SCHEME://$USERNAME@$POOL -api 127.0.0.1:1880
