
/*
********************************************************************************
********************************************************************************
*****                                                                      *****
*****                  Generated From csvGenGenerator                      *****
*****                                                                      *****
                  DATA GENERATION FOR listings 5000000 - 6000000  
*****                                                                      *****
********************************************************************************
********************************************************************************
*/

const faker = require('faker');
const fs = require('fs');
const moment = require('moment');

console.time('TIMER');

let nameString = 'id,home_id,review_id,review,created,user_id\n';
let count = 53000001;
const addOneMillion = (i) => {
  console.log('made it', i);
  console.time('MILLION');
  if (i > 59) {
    return;
  }
  nameString = '';
  for (let j = 1 + (i * 100000); j <= (i + 1) * 100000; j += 1) {  // 1000000 listings
    const numberOfReviews = faker.random.number({ min: 1, max: 20 });

    for (let k = 1; k <= numberOfReviews; k += 1) {
      nameString += count + ',' + j + ',' + k + ',' + faker.lorem.sentence() + ',' + moment.utc((faker.date.past())).format('MMMM YYYY') + ',' + faker.random.number({ min: 1, max: 100 }) + '\n';
      count += 1;
    }
  }

  fs.appendFile('./DataGen/GeneratedData/5_csvGen.csv', nameString, (err) => {
    if (err) {
      return console.log(err);
    }
    console.log('The file was saved! Iteration: ', i);
    i += 1;
    console.timeEnd('MILLION');
    addOneMillion(i);
    return undefined;
  });
};

fs.writeFile('./DataGen/GeneratedData/5_csvGen.csv', nameString, (err) => {
  if (err) {
    return console.log(err);
  }
  console.log('The header was written!');
  addOneMillion(50);
  return undefined;
});

console.timeEnd('TIMER');
