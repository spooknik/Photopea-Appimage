const debug = require('debug')('electron-online')
const EventEmitter = require('events')
const { app, BrowserWindow, ipcMain } = require('electron')

module.exports = class ElectronOnline extends EventEmitter {
  constructor () {
    super()

    this.status = 'PENDING'

    const init = () => {
      debug('Creating browser window')
      this.statusWindow = new BrowserWindow({ width: 0, height: 0, show: false })
      this.statusWindow.loadURL(`file://${__dirname}/index.html`)

      ipcMain.on('status-changed', (event, status) => {
        debug(`Status event received: ${status}`)
        this.status = status ? 'ONLINE' : 'OFFLINE'
        this.emit(status ? 'online' : 'offline')
      })
    }

    if (app.isReady()) init()
    app.once('ready', () => init())
  }
}
