# deemon-docker

A very basic Docker container with a bash script for [deemon](https://github.com/digitalec/deemon).

All the script does is add artists inside `artist.txt` to be monitored, download the monitored artists, sleep (default 1 hour, can be changed with env `SLEEP_TIME`) and loop.
