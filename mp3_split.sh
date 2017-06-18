#!/bin/bash

# check if argument is empty
if [ -z $1 ]; then
  echo "usage: bash mp3_split.sh target_dir"
  exit
fi

TARGET_DIR=$1
cd $1
FILE_LIST=$(ls $TARGET_DIR/*.mp3)
SPLIT_TIME=59.59

for file in $FILE_LIST; do
    mp3splt -t $SPLIT_TIME $file
done

