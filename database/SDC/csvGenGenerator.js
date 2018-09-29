const fs = require('fs');

// set how many handles per file
const chunk = 1000000; // 1M primaries per file

let start = 1;
for (let i = 0; i < 10; i += 1) {
  const fileName = `${i}_csvGen.csv`;
  const filler = `
/*
********************************************************************************
********************************************************************************
*****                                                                      *****
*****                  Generated From csvGenGenerator                      *****
*****                                                                      *****
                  DATA GENERATION FOR listings ${i * 1000000} - ${(i + 1) * 1000000}  
*****                                                                      *****
********************************************************************************
********************************************************************************
*/

const faker = require('faker');
const fs = require('fs');
const moment = require('moment');

console.time('TIMER');

let nameString = 'id,home_id,review_id,review,created,user_id\\n';
let count = ${start};
const addOneMillion = (i) => {
  console.log('made it', i);
  console.time('MILLION');
  if (i > ${(i * 10) + 9}) {
    return;
  }
  nameString = '';
  for (let j = 1 + (i * 100000); j <= (i + 1) * 100000; j += 1) {  // ${chunk} listings
    const numberOfReviews = faker.random.number({ min: 1, max: 20 });

    for (let k = 1; k <= numberOfReviews; k += 1) {
      nameString += count + ',' + j + ',' + k + ',' + faker.lorem.sentence() + ',' + moment.utc((faker.date.past())).format('MMMM YYYY') + ',' + faker.random.number({ min: 1, max: 100 }) + '\\n';
      count += 1;
    }
  }

  fs.appendFile('./DataGen/GeneratedData/${fileName}', nameString, (err) => {
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

fs.writeFile('./DataGen/GeneratedData/${fileName}', nameString, (err) => {
  if (err) {
    return console.log(err);
  }
  console.log('The header was written!');
  addOneMillion(${i * 10});
  return undefined;
});

console.timeEnd('TIMER');
`;

  fs.writeFile(`./DataGen/csvScripts/${i}_generator.js`, filler);
  start += 10600000;
}
