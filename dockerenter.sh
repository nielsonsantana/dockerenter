#!/bin/sh
DOCKER_PS_LINE=`docker ps | awk '{print $1,$2,$NF}' | grep -m 1 $1`
CONTAINER_NAME=`echo $DOCKER_PS_LINE | awk '{print $2}'`
CONTAINER_ID=`echo $DOCKER_PS_LINE | awk '{print $1}'`

if [ -n "$CONTAINER_ID" ]; then
    echo "Logged in: $CONTAINER_NAME"
    docker exec -it $CONTAINER_ID /bin/sh
else
    echo "No container found for term: '$1'"
fi
