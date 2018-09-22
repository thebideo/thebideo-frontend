#!/bin/bash

WEBDIR='/opt/thebideo-frontend/'
BACKUPDIR='/opt/backup_thebideo-frontend/'

echo 'Cleaning up backup dir'
rm -rf $BACKUPDIR*
echo 'Backing up'
tar czvf $BACKUPDIR/backup_thebideo-frontend.tar.gz  --exclude=*.mp3 -C $WEBDIR .
echo "Deploying from $WORKSPACE"
cd $WORKSPACE
cp -rf *.html *.css assets/ favicon.ico *.js $WEBDIR
echo 'Done!'