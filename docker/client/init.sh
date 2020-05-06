#!/bin/sh
apk add --no-cache curl
curl --version
touch /tmp/block
tail -f /tmp/block