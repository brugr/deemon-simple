#!/bin/bash
while true
do
    echo "script: Import monitored.txt"
    python3 -m deemon monitor --import /monitored.txt
    echo "script: Download monitored"
    python3 -m deemon refresh
    echo "script: Sleeping for ($SLEEP_TIME)"
    sleep $SLEEP_TIME
    echo "script: Loop to the top"
done