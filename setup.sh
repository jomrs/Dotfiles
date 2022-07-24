#!/bin/bash

#Actual Path.
CURRENT_PATH=$PWD

#Folders to Restore Ignoring sh setup file.
CONFIGS_FOLDER=(`ls -I '*.sh'`)

echo '⚡ Restoring default config...'
sleep 1

#Loop through folders to copy them.
for ((i=0; i < ${#CONFIGS_FOLDER[@]}; i++)); do
	echo "🔵 Currently restoring ${CONFIGS_FOLDER[$i]}..."
	cp -r "${CURRENT_PATH}/${CONFIGS_FOLDER}" ~/.config
	sleep 1
done

echo '✅ Finished.'

