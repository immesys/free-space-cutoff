# free-space-cutoff

You can configure the script by editing chkspace.sh. By default it will
stop sync2q and receiver (if they are under supervisor) when the free
space on /ssd is below 20GB.

## installing

To install, execute:

```
sudo ./install.sh
```

This will put the script in the hourly crontab.
