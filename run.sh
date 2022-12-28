#!/bin/bash

cleanup ()
{
kill -s SIGTERM $!
exit 0
}

trap cleanup SIGINT SIGTERM

while [ 1 ]
do
    echo "script: Import monitored"
    deemon monitor --import /config/monitored
    echo "script: Download monitored"
    deemon refresh
    echo "script: Sleeping for $SLEEP_TIME (SLEEP_TIME env)"
    sleep $SLEEP_TIME & wait
done