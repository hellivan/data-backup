# data-backup

This image creates a backup of the data that is mounted to `/data`
each time it is started.
The result is stored as a commpressed tar file in `/backup-data`.


## Usage with docker-compose:

     version: '2'
     
     services:
       db:
         image: mongo:latest
         volumes:
           - db-data:/data/db
     
       backup:
         image: data-backup
         volumes:
           - db-data:/data
           - db-backups:/backup-data
     volumes:
       db-data:
         driver: local
       db-backups:
         driver: local

## Parameters:

     FILE_NAME    prefix name of the backup file