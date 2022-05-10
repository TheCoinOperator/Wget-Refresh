#!/bin/bash

#this script will rename all existing files move them download the replacement and rename them

#Authored by Sophie Macfarlane 29/03/2022

#known bugs: Nothing to check if the version is downloadable, will not work if between renaming the old file and moving the old file the day changes

#this changes the directory so the script is 100% being run in the same place

cd /var/www/html/bc/softphones


# this section takes the version name you will be downloading

echo Please enter the version number "(this can be checked on the downloads page of www.bicomsystems.com):"

read vername

version=$vername


#this section will be dealing with the existing files, the first section will rename them oldver.fileextension+date

mv Communicator.exe Communicatorold.exe-"`date +"%d-%m-%Y"`"

mv Communicator.dmg Communicatorold.dmg-"`date +"%d-%m-%Y"`"

mv Communicator.msi Communicatorold.msi-"`date +"%d-%m-%Y"`"

#this section will move the files to the oldver directory

mv Communicatorold.exe-"`date +"%d-%m-%Y"`" oldver

mv Communicatorold.dmg-"`date +"%d-%m-%Y"`" oldver

mv Communicatorold.msi-"`date +"%d-%m-%Y"`"  oldver


#this section downloads the communicator version as specified in the version/vername variable

wget  https://downloads.bicomsystems.com/desktop/glocom/public/${version}/communicator/Communicator-${version}.exe

wget  https://downloads.bicomsystems.com/desktop/glocom/public/${version}/communicator/Communicator-${version}.dmg

wget  https://downloads.bicomsystems.com/desktop/glocom/public/${version}/communicator/communicator.msi


#this section renames the new files to Communicator.fileextension

mv Communicator-${version}.exe Communicator.exe

mv Communicator-${version}.dmg Communicator.dmg


