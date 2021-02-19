#!/bin/sh
cur_time=$(date '+%Y-%m-%d')
sevendays_time=$(date -d -21days '+%Y-%m-%d')
PGPASSWORD='Xh$xInEh%200915'
export PGPASSWORD
echo "Starting Backup PostgreSQL ..." >> /home/backups/backup.log 2>&1
rm -rf pgsql-fastgate.$sevendays_time.tar.gz
wait
pg_dump -h 127.0.0.1 -U postgres -d fastgate -f /home/backups/"pgsql-fastgate.$cur_time.sql"
wait
#psql -h 124.47.17.18 -U postgres -d fastgate > /home/backups/"pgsql-fastgate.$cur_time.sql"
tar zcvf "/home/backups/pgsql-backup.$cur_time.tar.gz" *.sql
wait
echo "Remove temp file ..." >> /home/backups/backup.log 2>&1
rm -rf pgsql-fastgate.*.sql
echo "Finish Backup ..." >> /home/backups/backup.log 2>&1
