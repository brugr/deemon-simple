# deemon-docker

A very basic Docker container with a bash script for [deemon](https://github.com/digitalec/deemon).

All the script does is add anything inside `monitored.txt` to be monitored, download the monitored artists, sleep (default 24 hours, can be changed with env `SLEEP_TIME`) and loop.

Due to a limitation of deemon [(#33)](https://github.com/digitalec/deemon/issues/33), you'll need to remove monitored items manually through the terminal.
