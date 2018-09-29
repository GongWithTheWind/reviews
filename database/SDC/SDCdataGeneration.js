const fs = require('fs');
const async = require('async');
const { exec } = require('child_process');


console.time('Starting Generation');

const scriptsFolder = './DataGen/csvScripts'; // add your scripts to folder named scripts
let files = fs.readdirSync(scriptsFolder); // reading files from folders
files = files.filter(file => file[0] !== '.');
// const funcs = files.map(file => console.log(path.join(__dirname,`/DataGen/Scripts/${file}`)));
const funcs = files.map(file => exec.bind(null, `node ./DataGen/csvScripts/${file}`));
// const funcs = [exec.bind(null, `node ./DataGen/Scripts/${files[0]}`)];
// console.log(funcs);

const getResults = (err, data) => {
  console.log('GET RESULTS');
  if (err) {
    return console.log(err);
  }
  // console.timeEnd('Starting Generation');
  const results = data.map(lines => lines.join(''));
  console.timeEnd('Starting Generation');
  console.log(results);
  return results;
};

// to run your scripts in parallel use
// funcs[0]();

// async.parallel(funcs.slice(0, 10), (err, data) => {
//   getResults(err, data);
//   async.parallel(funcs.slice(10), getResults);
// });



const partitions = [];
for (let i = 0; i < 10; i += 1) {
  if (i % 2 === 0) {
    partitions.push([funcs[i]]);
  } else {
    partitions[Math.floor(i / 2)].push(funcs[i]);
  }
}

console.log(partitions);
// async.parallel(partitions[0], getResults);

async.each(partitions, partFuncs => async.parallel(partFuncs), getResults);

// async.each(openFiles, saveFile, function (err) {
//   // if any of the saves produced an error, err would equal that error
// });