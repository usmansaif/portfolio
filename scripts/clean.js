const sh = require('shelljs');
const upath = require('upath');

const destPath = upath.resolve(upath.dirname(__filename), '../docs');

sh.rm('-rf', `${destPath}/*`)
// Create CNAME file with content "usmansaif.com"
sh.ShellString('usmansaif.com').to(`${destPath}/CNAME`);