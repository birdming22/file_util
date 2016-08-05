#!/bin/bash
#
# copy in order for mp3 player
#
# usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir
#

if [ $1="" ]; then
    echo "usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir"
    exit
fi

if [ $2="" ]; then
    echo "usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir"
    exit
fi

DST_DIR=$2
cd "$1"
DIR_LIST=$(ls)
DIR_LEN=$(ls | wc -l)
count=1
for d in $DIR_LIST; do
    echo "copy $count/$DIR_LEN"
    if [ -d "${d}" ]; then
        cd $d
        mkdir -p $DST_DIR$d
        FILE_LIST=$(ls *.mp3)
        for file in $FILE_LIST; do
            echo "cp $file $DST_DIR$d"
            cp $file $DST_DIR$d
        done
        cd -
    fi
    let count=$count+1
done

