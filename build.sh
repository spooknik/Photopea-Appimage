#!/bin/bash
nativefier -e 4.0.1 --name "photopea" "https://www.photopea.com/"
mv ~/photopea-linux-x64 .
cp build/* photopea-linux-x64/resources/app/
cd photopea-linux-x64/resources/app/
mkdir build
mv icon.png build/
yarn add electron-builder --dev
yarn electron-builder --x64 --linux AppImage
mv "dist/Photopea 1.1.0.AppImage" dist/Photopea_1.1.0.AppImage
cp dist/Photopea_1.1.0.AppImage ../../..
echo "build complete"

