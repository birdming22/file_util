# file_util

## cp_in_order.sh

When you need file copy in order

    usage: bash cp_in_order.sh src_mp3_dir dest_mp3_dir

## batch_rename.sh

    usage: bash batch_rename.sh target_dir

## Replace spaces in file names

    find -name "* *" -type d | rename 's/ /_/g'    # do the directories first
    find -name "* *" -type f | rename 's/ /_/g'
