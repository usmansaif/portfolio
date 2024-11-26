const sh = require('shelljs');
const upath = require('upath');

const destPath = upath.resolve(upath.dirname(__filename), '../docs');

sh.rm('-rf', `${destPath}/*`)
// Create CNAME file with content "usmansaif.work"
sh.ShellString('usmansaif.work').to(`${destPath}/CNAME`);