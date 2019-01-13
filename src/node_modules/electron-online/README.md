# electron-online

determine, when your electron app is online or went offline.

``` js
const ElectronOnline = require('electron-online')
const connection = new ElectronOnline()

connection.on('online', () => {
  console.log('App is online!')
})

connection.on('offline', () => {
  console.log('App is offline!')
})

console.log(connection.status) // 'PENDING'
```

## install

```
$ npm i electron-online
```

## use
#### `connection = new require('electron-online')()`
`connection` is an `EventEmitter` instance.

### properties
#### `connection.status`
a string that represents the status of the app's connection. can be `PENDING`
(when still determining the initial status), `ONLINE`, or `OFFLINE`.

### events
#### `connection.on('online')`
fires, when the app comes online.

#### `connection.on('offline')`
fires, when the app becomes offline.

## test

```
$ npm test
```
