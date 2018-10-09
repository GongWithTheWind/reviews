const fs = require('fs');
const async = require('async');
const { exec } = require('child_process');
const Promise = require('bluebird');


console.time('Starting Generation');

const scriptsFolder = './DataGen/csvScripts/cass'; // add your scripts to folder named scripts
let files = fs.readdirSync(scriptsFolder); // reading files from folders
files = files.filter(file => file[0] !== '.');
// // const funcs = files.map(file => console.log(path.join(__dirname,`/DataGen/Scripts/${file}`)));
// const funcs = files.map(file => exec.bind(null, `node ./DataGen/scriptGen/${file}`));
// // const funcs = [exec.bind(null, `node ./DataGen/Scripts/${files[0]}`)];
// // console.log(funcs);

const getResults = (err) => {
  console.log('GET RESULTS');
  if (err) {
    return console.log(err);
  }
  // console.timeEnd('Starting Generation');
  console.timeEnd('Starting Generation');
};

// const partitions = [];
// console.log(9);
// for (let i = 0; i < 100; i += 1) {
//   if (i % 10 === 0) {
//     partitions.push([funcs[i]]);
//   } else {
//     partitions[Math.floor(i / 10)].push(funcs[i]);
//   }
// }

// console.log('partitions', partitions.length);
// async.parallel(partitions[9], getResults);


const genJson = (factor, i = 0) => {
  // for (let i = 0; i < factor; i += 1) {
    console.log('Generating batch ', i);
  const chunk = files.slice((i * factor), ((i + 1) * factor));
  const funcs = chunk.map(file => exec.bind(null, `node ./DataGen/csvScripts/cass/${file}`));
  async.parallel(funcs, (err) => {
    if (err) {
      console.error(err);
    }
    if (i < factor) {
      const j = i + 1;
      genJson(factor, j);
    } else {
      console.log('ALL DONE');
      getResults();
      client.shutdown();
      console.timeEnd('GENERATING');
      console.log('success');
      console.log(res);
    }
  });
};

genJson(5);
