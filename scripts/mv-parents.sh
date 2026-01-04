#!/bin/bash

mv-parents () {
# Move files and create folders required by the targets path if necessary.
# (like 'mkdir --parents' but for mv)
#
# Arguments:
#	1: source path
#	2: target path

    SOURCE_PATH=$1
	TARGET_PATH=$2
	
	if [ ! "$TARGET_PATH" ]; then
		echo "Too few arguments!"
		echo "Use 'mv-parents [PATH TO SOURCE] [PATH TO TARGET]'."
		return 1
	fi

	if [ ! -d "$TARGET_DIR" ]; then
		mkdir --parents "$(dirname "$TARGET_PATH")"
	fi
	
	mv "$SOURCE_PATH" "$TARGET_PATH"
}