#!/usr/bin/env bash

if [[ ! -z "`which docker-machine`" ]]; then
	export MACHINE_IP=$(docker-machine ip dev)
else
	export MACHINE_IP=`ifconfig docker0 | awk '/inet addr\:(.*) / { print $2}' | sed 's/addr:\(.*\)/\1/'`
fi

# Stop the containers
docker-compose stop

# Delete the instances of the containers
docker-compose rm