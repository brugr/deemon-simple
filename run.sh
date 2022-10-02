#!/bin/bash
while true
do
    echo "script: Import artists.txt"
    python3 -m deemon monitor --import /artists.txt
    echo "script: Download monitored"
    python3 -m deemon download --monitored
    echo "script: Sleeping for ($SLEEP_TIME)"
    sleep $SLEEP_TIME
    echo "script: Loop to the top"
done