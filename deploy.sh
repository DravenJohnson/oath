#!/bin/bash

if [ $UID -ne 0 ]; then
  echo "This script must be run as root or via sudo. Exiting"
  exit 1
fi


OATH_BASE_PATH=$(pwd -P)
TWOFA_SCRIPT_LINK=/usr/local/bin/

ln -s $OATH_BASE_PATH/show $TWOFA_SCRIPT_LINK/2fa
if [ $? -eq 0 ]; then
	echo "Symlink Success.."
else
	echo "Symlink Failed.."
	exit 1
fi
