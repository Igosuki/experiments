#!/bin/sh 

docker start kind-control-plane && docker exec kind-control-plane sh -c 'mount -o remount,ro /sys; kill -USR1 1'