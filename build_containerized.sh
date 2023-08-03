#!/bin/sh

docker run \
    --rm \
    --volume "`pwd`:/data" \
    --user `id -u`:`id -g` \
    --workdir /data \
    --entrypoint "" \
    lesica_builder \
    ./build.sh

