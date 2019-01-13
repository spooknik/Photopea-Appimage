#!/bin/bash
#nativefier -e 4.0.1 --name "photopea" "https://www.photopea.com/"
#mv ~/photopea-linux-x64 .
echo "starting build..."
#cp build/* src/
cd src/
#mkdir build
#mv icon.png build/
#npm install koa; npm install debug; npm install electron-online
#yarn add electron-builder --dev
yarn electron-builder --x64 --linux AppImage
mv "dist/Photopea 1.2.0.AppImage" ../Photopea_1.2.0.AppImage
echo "build complete"

