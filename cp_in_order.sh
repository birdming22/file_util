#!/bin/bash
#
# copy in order for mp3 player
#
# usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir
#

# check if argument is empty
if [ -z $1 ]; then
    echo "usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir"
    exit
fi

if [ -z $2 ]; then
    echo "usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir"
    echo "2"
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
    else
        echo "cp $d $DST_DIR"
        cp $d $DST_DIR
    fi
    let count=$count+1
done

