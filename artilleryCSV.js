const fs = require('fs');
const faker = require('faker');

const fields = ['homeId', 'pageId', 'query', 'userId'];

let entry = fields.join() + '\n';
for (let i = 0; i < 1000; i += 1) {
  const string = `${faker.random.number(1, 10000000)},${faker.random.number(1, 3)},${faker.random.word().substr(0, 1)},${faker.random.number(1, 100)},`;
  entry += string + '\n';

  if (i === 100) {
    fs.writeFileSync('./artillery.csv', entry);
    entry = '';
  } else if (i % 100 === 0) {
    fs.appendFileSync('./artillery.csv', entry);
    entry = '';
  }
}


console.log('DONE');
