const cassandra = require('cassandra-driver');
const async = require('async');
const fs = require('fs');
const Promise = require('bluebird');
const { exec } = require('child_process');

const readFileAsync = Promise.promisify(fs.readFile);

const client = new cassandra.Client({
  contactPoints: ['127.0.0.1:9042'],
});

console.time('SEEDING');

const files = fs.readdirSync('./DataGen/GeneratedData/JSON');

function seedFile(fileName) {
  console.log(`seeding ${fileName}`);
  return readFileAsync(`./DataGen/GeneratedData/JSON/${fileName}`, 'utf8')
    .then((result) => {
      const data = JSON.parse(result);
      // console.log(data.length);
      for (let i = 0; i < 100000; i += 1) {
        // console.log(data[i], '||', JSON.stringify(data[i]));
        const insertHome = `INSERT INTO sdc.homes JSON`;
        console.log(JSON.stringify(data[i]));
        client.execute(insertHome, JSON.stringify(data[i]))
          .then(res => console.log(res));
      }
    })
    // .then((insertHome) => {
    //   // console.log(insertHome);
    // })
    .then((response) => {
      console.log('inserted', response);
    })
    .catch((err) => {
      console.log(err);
    });
}

const seedCass = (factor, i = 0) => {
  // for (let i = 0; i < factor; i += 1) {
  const chunk = files.slice((i * factor), ((i + 1) * factor));
  // console.log(chunk);
  const funcs = chunk.map((file) => { return () => seedFile(file); });
  // console.log('funcs', funcs);
  async.parallel(funcs, (err) => {
    if (err) {
      console.error(err);
    }
    if (i < factor) {
      const j = i + 1;
      seedCass(factor, j);
    } else {
      console.log('ALL DONE');
      client.shutdown();
      console.timeEnd('SEEDING');
      console.log('success');
      console.log(res);
    }
  });
  // await Promise.all(chunk.map(file => seedFile(file)));
  // console.log(`chunked from: ${i * factor} to ${(i + 1) * factor - 1}`);
  // if (i < factor) {
  //   const j = i + 1;
  //   seedCass(factor, j);
  // }
  // }
}


// drop table if exists
client.execute('DROP TABLE IF EXISTS sdc.homes')
// drop keyspace if exists
  .then((res) => {
    return client.execute('DROP KEYSPACE IF EXISTS sdc');
  })
  // create keyspace
  .then((res) => {
    return client.execute("CREATE KEYSPACE sdc WITH replication = {'class': 'NetworkTopologyStrategy', 'datacenter1': 1} AND durable_writes = true");
  })
  // create user type
  .then((res) => {
    return client.execute('CREATE TYPE sdc.user (id int, name text, photo text)')
  })
  // // create review type
  // .then((res) => {
  //   return client.execute('CREATE TYPE sdc.review (id int, review text, created text, user frozen<user>)');
  // })
  // create table
  .then((res) => {
    return client.execute('CREATE TABLE sdc.homes (home_id int, review_id int, review text, created text, user frozen<user>, PRIMARY KEY (home_id, review_id))');
  })
  // start seeding
  .then((res) => {
    return seedCass(1);
  })
  .catch((err) => {
    client.shutdown();
    console.log('ERROR : ');
    console.log(err);
  });
