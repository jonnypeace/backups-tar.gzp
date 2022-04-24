#!/bin/bash

# incremental backup directory
dirbk=/backup/directory

# Directory to recover incremental backups to
# Example /home if you are recovering a users
# home directory, i.e. /home/user
recdir=/home

for f in $(find "$dirbk" -type f -iname "*.tgz" | sort -n) ; do
	cd "$recdir" && tar -x -g /dev/null -f "$f"
done
