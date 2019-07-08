#!/bin/bash

DIR=$(dirname $(readlink -f "$0"))

DIRECTORY=${DIR}/app-server/cert

if [ ! -d "$DIRECTORY" ]; then
    mkdir ${DIRECTORY}
fi

openssl req -x509 -nodes -days 180 -newkey rsa:2048 -keyout $DIR/app-server/cert/key.pem -out $DIR/app-server/cert/cert.pem << EOL
CN
SH
Shanghai
Shanghai
owt-demo
$1
nobody@owt.org
EOL
