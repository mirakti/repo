#!/bin/bash
# This script asks you for the name of the archive and then packs the insides
# of the home folder into a compressed TAR-Ball (FIRST) and then copies that backup
# into the tmp/namedarchive in the root directory (SECOND)

echo "mkarch3-script started at: $(date)"
echo "Type the name of your archive:"
read archname
cd /tmp
mkdir $archname
cd /home/kimokunu
export ARCHIVE=/tmp/$archname
#FIRST
tar -cvzf backups.tar.gz * 
#SECOND
cp -v backups.tar.gz $ARCHIVE 
echo "mkarch3-script ended at: $(date)"
