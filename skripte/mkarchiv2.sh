#!/bin/bash
# This script packs the insides of the home folder into a compressed TAR-Ball (FIRST) and then copies that backup into the tmp/backups in the root directory (SECOND)
cd /home/kimokunu 
export ARCHIVE=/tmp/backups
#FIRST
tar -cvzf backups.tar.gz * 
#SECOND
cp -v backups.tar.gz $ARCHIVE 
