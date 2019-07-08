#!/bin/sh
date
file=$(date +'%y-%m-%d').gz
echo Dumping file $file
mongodump --uri=$MONGO_URI --gzip --archive=$file
gsutil/gsutil cp $file gs://soittotunnille-backup/$file
rm $file
