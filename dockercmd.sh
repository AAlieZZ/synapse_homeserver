#!/bin/bash
docker run -d --name synapse \
    --mount type=volume,src=synapse-data,dst=/data \
    -p 8008:8008 \
    -p 587:587 \
    -v /home/<user>/matrix/ssl/:/home/<user>/matrix/ssl/ \
    matrixdotorg/synapse:latest run \
    -m synapse.app.generic_worker \
    --config-path=/data/homeserver.yaml \
    --config-path=/data/generic_worker.yaml
