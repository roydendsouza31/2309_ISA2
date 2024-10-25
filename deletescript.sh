#!/bin/bash
if docker ps -a | grep -q "2309"; then
echo "Container 2309 exists. Deleting..." 
docker rm -f 2309 
else 
echo "Container 2309 does not exist." 
fi
