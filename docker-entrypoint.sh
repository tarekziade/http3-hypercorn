#!/bin/sh

cd $(dirname $0)
case "$1" in
    server)
    exec /home/docker/data/bin/hypercorn --quic-bind localhost:4433 --certfile /home/docker/data/cert.pem --keyfile /home/docker/data/key.pem --bind localhost:8000 mozhttp3server.run:app
    ;;

    *)
        echo "Unknown CMD, $1"
        exit 1
        ;;
esac