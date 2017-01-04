#!bin/sh

# if env FILE_NAME not set, use data as default filename
if [ -z "$FILE_NAME" ];
then
  FILE_NAME=data
fi


TS=$(date '+%Y.%m.%d_%H.%M.%S')

tar -czf /backup-data/${FILE_NAME}_${TS}.tar.gz /data
