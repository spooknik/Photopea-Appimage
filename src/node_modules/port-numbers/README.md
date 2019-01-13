# port-numbers
[![](https://img.shields.io/npm/v/port-numbers.svg?style=flat)](https://www.npmjs.org/package/port-numbers) [![](https://img.shields.io/npm/dm/port-numbers.svg)](https://www.npmjs.org/package/port-numbers) [![](https://api.travis-ci.org/silverwind/port-numbers.svg?style=flat)](https://travis-ci.org/silverwind/port-numbers)
> Get information on network port numbers and services, based on [IANA's public listing](http://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml).

### Installation
```
$ npm i port-numbers
```
### Example
```js
const portNumbers = require('port-numbers');

portNumbers.getService(6379);
//=> { name: 'redis', description: 'An advanced key-value cache and store' }
portNumbers.getService(26257);
//=> { name: 'cockroach', description: 'CockroachDB' }
portNumbers.getService(123, 'udp');
//=> { name: 'ntp', description: 'Network Time Protocol' }

portNumbers.getPort('redis');
//=> { port: 6379, protocol: 'tcp', description: 'An advanced key-value cache and store' }
portNumbers.getPort('cockroach');
//=> { port: 26257, protocol: 'tcp', description: 'CockroachDB' }
portNumbers.getPort('ntp', 'udp');
//=> { port: 123, protocol: 'udp', description: 'Network Time Protocol' }
```

### APIs
#### portNumbers.getService(port[, protocol])
- `port` *Number* : the port to lookup. Required.
- `protocol` *String* : the protocol. Default: `tcp`.

#### portNumbers.getPort(service[, protocol])
- `service` *String* : the service to lookup. Required.
- `protocol` *String* : the protocol. Default: `tcp`.

© [silverwind](https://github.com/silverwind), distributed under BSD licence
