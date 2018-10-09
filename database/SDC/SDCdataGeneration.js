const fs = require('fs');
const async = require('async');
const { exec } = require('child_process');

console.time('Starting Generation');

const scriptsFolder = './DataGen/csvScripts/cass/'; // add your scripts to folder named scripts
let files = fs.readdirSync(scriptsFolder); // reading files from folders
files = files.filter(file => file[0] !== '.');
// const funcs = files.map(file => console.log(path.join(__dirname,`/DataGen/Scripts/${file}`)));
const funcs = files.map(file => exec.bind(null, `node ./DataGen/csvScripts/cass/${file}`));
// const funcs = [exec.bind(null, `node ./DataGen/Scripts/${files[0]}`)];
// console.log(funcs);

const getResults = (err, data) => {
  console.log('GET RESULTS');
  if (err) {
    return console.log(err);
  }
  console.timeEnd('Starting Generation');
  const results = data.map(lines => lines.join(''));
  console.log(results);
  return results;
};

// to run your scipts in parallel use
// funcs[0]();
async.parallel(funcs, getResults);
