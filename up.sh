#!/usr/bin/env bash

# This will catch anythign that the user wants to forward to docker-compose
# e.g things like -d to send it to the background and such
AFTER_CMD=${*:1}

if [[ ! -z "`which docker-machine`" ]]; then
	export MACHINE_IP=$(docker-machine ip dev)
else
	export MACHINE_IP=`ifconfig docker0 | awk '/inet addr\:(.*) / { print $2}' | sed 's/addr:\(.*\)/\1/'`
fi

docker-compose up ${AFTER_CMD}
