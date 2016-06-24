#!/bin/bash
#
# batch rename
#
# usage: bash batch_rename.sh target_dir [test_replace/replace] arg1 arg2
#

DST_DIR=$1
cd "$DST_DIR"
FILE_LIST=$(ls)
FILE_COUNT=$(ls | wc -l)

OPTION=$2
case "$OPTION" in
    replace)
        ARG1=$3
        ARG2=$4
        echo "replace $3 to $4"
        count=1
        for d in $FILE_LIST; do
            mv $d ${d//$3/$4}
            let count=$count+1
        done
        ;;
    test_replace)
        ARG1=$3
        ARG2=$4
        ARG3=$5
        echo "replace $3 to $4"
        count=1
        for d in $FILE_LIST; do
            echo "mv $d ${d//$3/$4}"
            let count=$count+1
        done
        ;;
esac
