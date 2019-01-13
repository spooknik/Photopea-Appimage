const ElectronOnline = require('../')

const connection = new ElectronOnline()

connection.on('online', () => {
  console.log('App is online!')
  console.log(connection.status)
})

connection.on('offline', () => {
  console.log('App is offline!')
  console.log(connection.status)
})

console.log(connection.status)
