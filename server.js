const { execSync } = require('child_process');

execSync(`YPERSISTENCE=./data node ${__dirname}/node_modules/y-websocket/bin/server.js`)
