const fs = require('fs');

// set upper bound of entries
const entries = 10000000; // 1M primary entries

// set how many handles per file
const chunk = 100000; // 50K primaries per file

for (let i = 1; i < entries + 1; i += chunk) {
  const fileName = `${i}_gen.js`;
  const filler = `
/*
********************************************************************************
********************************************************************************
*****                                                                      *****
*****                 Generated From genFileGenerator                      *****
*****               Builds a master table with 1000 partitions             ***** 
*****                                                                      *****
********************************************************************************
********************************************************************************
*/
const faker = require('faker');
const fs = require('fs');
const moment = require('moment');

// console.log('STARTED');
// const date = new Date();

const entries = [];
console.time('TIMER');
let jsonString = '';
for (let i = ${i}; i < ${i + chunk}; i += 1) { // ${chunk} listings
  const numberOfReviews = faker.random.number({
    min: 1,
    max: 20,
  });

  // const home = {
  //   home_id: i,
  //   reviews: [],
  // };

  for (let j = 1; j <= numberOfReviews; j += 1) {
    const userId = faker.random.number({ min: 1, max: 100 });

    const entry = {
      home_id: i,
      review_id: j,
      review: faker.lorem.sentence(),
      created: moment.utc((faker.date.past())).format("MMMM YYYY"),
      user: {
        id: userId,
        name: faker.name.firstName(),
        photo: 'https://loremflickr.com/320/240?lock=' + userId + '/cat',
      },
    };

    entries.push(entry);
  }
  // listings.push(home);
}

fs.writeFile('./DataGen/GeneratedData/JSON/${fileName}', JSON.stringify(entries),
  (err) => {
    if (err) {
      console.error(err);
    }
    console.timeEnd('TIMER');
    console.log('SAVED');
  });
`;

  fs.writeFile(`./DataGen/scriptGen/${i}_generator.js`, filler);
}
