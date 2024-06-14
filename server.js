const { execSync } = require('child_process');

execSync(`YPERSISTENCE=./data node ./node_modules/y-websocket/bin/server.js`)
