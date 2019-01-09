#!/bin/bash
nativefier -e 4.0.1 --name "photopea" --icon /home/steven/Pictures/photopea.png "https://www.photopea.com/"
mv ~/photopea-linux-x64 .
cp build/package.json photopea-linux-x64/resources/app/
cd photopea-linux-x64/resources/app/
yarn add electron-builder --dev
yarn electron-builder
cp -r dist ../../../

