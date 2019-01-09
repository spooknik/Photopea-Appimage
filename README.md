# Photopea-Appimage

This is a simple [AppImage](https://appimage.org/) for [Photopea](https://www.photopea.com/). It was made in [Electron](https://electronjs.org/) and then build as an AppImage. **This is WIP**, see known issues below. 

It works exactly like the browser version does. You need to be online to use it, but once the application is loaded, you can disconnect from the Internet.

Download 'Photopea 1.0.0.AppImage', make executable, and double click. 

You can build the source by running build.sh. Requires [yarn](https://yarnpkg.com/lang/en/) and Electron

**Known Issues**
- Closing the window when an unsaved document is open does not do anything. All documents must be closed or saved to exit the program. (Possibility a problem with Electron, will check when 5.0 is released.)
- No dialog box pops up when saving/exporting images, everything just goes to Downloads (No known fix, seems to be part of Photopea)
- .desktop file does not work correctly. It will not appear in your applications menu. (Will fix ASAP)
