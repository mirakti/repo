#!/bin/bash
# This script creates a folder with 3 txt.files (FIRST), then packs them in a TAR-Ball (SECOND) and then deletes the original folder (THIRD) and then again unpacks the TAR-Ball (FOURTH) to restore the deleted folder

cd ~
# FIRST
mkdir meine_dateien
cd meine_dateien
touch datei1.txt datei2.txt datei3.txt
cd ~
# SECOND
tar -cvf meine_dateien.tar meine_dateien
# THIRD
rm -rf meine_dateien
# FOURTH
tar -xvf meine_dateien.tar
