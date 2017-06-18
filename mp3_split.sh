#!/bin/bash

# check if argument is empty
if [ -z $1 ]; then
  echo "usage: bash mp3_split.sh src_dir dst_dir"
  exit
fi
if [ -z $2 ]; then
  echo "usage: bash mp3_split.sh src_dir dst_dir"
  exit
fi

SRC_DIR=$1
cd $1
FILE_LIST=$(ls $SRC_DIR/*.mp3)
SPLIT_TIME=59.59

for file in $FILE_LIST; do
    mp3splt -t $SPLIT_TIME $file -d $2
done

