#!/bin/bash
source $HOME/.bash_profile
pidList=$(docker ps --filter "name=exor" --format "{{.Names}}")
for pid in ${pidList[@]};
do
    truncate -s 0 log.txt
    docker logs $pid >> log.txt
    sleep 1
    tail -n7 log.txt > log.txt
    sleep 2
done