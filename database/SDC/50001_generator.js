
/*
********************************************************************************
********************************************************************************
*****                                                                      *****
*****                      Generated From schemaGen                        *****
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

console.time('TIMER');
// for (let i = 50001; i < 100001; i += 1) { // 50000 listings
const generateString = (i, jsonString = '') => {
  const numberOfReviews = faker.random.number({
    min: 1,
    max: 20,
  });

  const home = {
    homeId: i,
    reviews: [],
  };

  for (let j = 1; j <= numberOfReviews; j += 1) {
    const userId = faker.random.number({ min: 1, max: 100 });
    const review = {
      id: j,
      review: faker.lorem.sentence(),
      created: moment.utc((faker.date.past())).format("'MMMM YYYY"),
      user: {
        id: userId,
        name: faker.name.firstName(),
        photo: 'https://loremflickr.com/320/240?lock=' + userId + '/cat',
      },
    };
    home.reviews.push(review);
  }
  jsonString += JSON.stringify(home) + '\n';
  if (i === 1000) {
    fs.writeFileSync('./DataGen/GeneratedData/JSON/TEST_gen.js', jsonString);
    i += 1;
    console.log('Created File');
    generateString(i);
  } else if (i % 1000 === 0) {
    fs.appendFile('./DataGen/GeneratedData/JSON/TEST_gen.js', jsonString,
      (err) => {
        if (err) {
          console.error(err);
          return;
        }
        if (i !== 100000) {
          console.log('AGAIN', i);
          i += 1;
          return generateString(i);
        } else {
          console.log('END');
          console.log('50001 - 100001 were saved!   ||   ', console.timeEnd('TIMER'));
          return;
        }
      });
  } else {
    i += 1;
    return generateString(i, jsonString);
  }
};

generateString(1);
