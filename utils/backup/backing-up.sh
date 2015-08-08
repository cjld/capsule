#!/bin/bash
# full system backup

# Backup destination
backdest=/opt/backup

# Labels for backup name
distro=$(lsb_release -si)
type=full
date=$(date "+%F")
backupfile="$backdest/$distro-$type-$date.tar.gz"

# Exclude file location
exclude_file="./exc.txt"

# Check if chrooted prompt.
echo -n "Are you ready to backup? backupfile=$backupfile exclude_file=$exclude_file (y/n): "
read executeback

# Check if exclude file exists
if [ ! -f $exclude_file ]; then
      echo -n "No exclude file exists, continue? (y/n): "
      read continue
      if [ $continue == "n" ]; then exit; fi
fi

if [ $executeback = "y" ]; then
      tar --exclude-from=$exclude_file -czpvf $backupfile /
fi
