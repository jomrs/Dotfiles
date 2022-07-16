#!/bin/bash

#Acutal Path
CURRENT_PATH=$PWD

echo '⚡Restoring default config...'
sleep 1

cp -r "${CURRENT_PATH}/bspwm" ~/.config
echo '✅ Finished.'

