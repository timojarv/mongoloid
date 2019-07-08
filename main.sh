#!/bin/sh
echo [Credentials] > /root/.boto
echo gs_oauth2_refresh_token = $GS_TOKEN >> /root/.boto

if [ -z "$RUN_ONCE" ]
then
    mkfifo ./fifo
    cp daily_backup.sh /etc/periodic/$INTERVAL/
    tail -f ./fifo
else
    ./backup.sh
    tail -f
fi
