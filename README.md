# Photopea-Appimage 

This is a simple [AppImage](https://appimage.org/) for [Photopea](https://www.photopea.com/). It was made in [Electron](https://electronjs.org/) and then build as an AppImage.

It works exactly like the browser version does. You need to be online to load the application, but once the application is loaded, you can disconnect from the Internet. The app can function without an active internet connection if it has been cached. 

Download '[Photopea-AppImage](https://github.com/spooknik/Photopea-Appimage/releases/download/1.2.0/Photopea_1.2.0.AppImage)', make executable, and double click. 

If somethings goes wrong or doesn't look right inside the app, delete ~/.config/Photopea. This is the cache folder location for the app. 

You can build the source by running build.sh. Requires [yarn](https://yarnpkg.com/lang/en/) and Electron

Also see: [Photopea-Windows](https://github.com/spooknik/Photopea-Windows) for a Windows verison. 

**Known Issues**
- Closing the window when an unsaved document is open does not do anything. All documents must be closed or saved to exit the program. (This is because html alert() is not possible in electron)
- ~~No dialog box pops up when saving/exporting images, everything just goes to Downloads (No known fix, seems to be part of Photopea)~~
- ~~.desktop file does not work correctly. It will not appear in your applications menu. (Will fix ASAP)~~ Fixed as of 1.1.0

![App Image](https://raw.githubusercontent.com/spooknik/Photopea-Appimage/master/app.png)
