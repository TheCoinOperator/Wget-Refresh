#!/bin/bash

#this script will rename all existing files move them download the replacement and rename them

#this is where variables go


# this section takes the version name you will be downloading

echo Please enter the version number "(this can be checked on the downloads page of www.bicomsystems.com):"

read vername

version=$vername

# this is a test feature to make sure the version is being stored correctly, remove before publishing

echo $version

#this section will be dealing with the existing files, the first section will rename them oldver.fileextension+date

mv Communicator.exe Communicatorold.exe-"`date +"%d-%m-%Y"`"

mv Communicator.dmg Communicatorold.dmg-"`date +"%d-%m-%Y"`"

mv Communicator.msi Communicatorold.msi-"`date +"%d-%m-%Y"`"

#this section will move the files to the oldver directory

mv Communicatorold.exe-"`date +"%d-%m-%Y"`" oldver

mv Communicatorold.dmg-"`date +"%d-%m-%Y"`" oldver

mv Communicatorold.msi-"`date +"%d-%m-%Y"`"  oldver


#this section downloads the communicator version as specified in the version/vername variable

wget  https://downloads.bicomsystems.com/desktop/glocom/public/${version}/glocom/gloCOM-${version}.exe

wget  https://downloads.bicomsystems.com/desktop/glocom/public/${version}/glocom/gloCOM-${version}.dmg

wget  https://downloads.bicomsystems.com/desktop/glocom/public/${version}/glocom/gloCOM.msi


#this section renames the new files to Communicator.fileextension

mv gloCOM-${version}.exe Communicator.exe

mv gloCOM-${version}.dmg Communicator.dmg

mv gloCOM.msi Communicator.msi


