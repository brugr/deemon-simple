# deemon-docker

A very basic Docker container with a bash script for [deemon](https://github.com/digitalec/deemon).

All the script does is add anything inside `/config/monitored` to be monitored, download the things being monitored, sleep (default 24 hours, can be changed with env `SLEEP_TIME`) and loop.

Due to a limitation of deemon [(#33)](https://github.com/digitalec/deemon/issues/33), you'll need to remove monitored items manually through the terminal.

To do this enter a shell using `docker exec -it deemon bash` and then either [remove the artist](https://digitalec.github.io/deemon/docs/commands/monitor.html#stop-monitoring-an-artist) or [reset the database](https://digitalec.github.io/deemon/docs/commands/reset.html).
This can also be used with other [commands](https://digitalec.github.io/deemon/docs/commands).
