const fs = require('fs');

// set upper bound of entries
const entries = 2000000; // 1M primary entries

// set how many handles per file
const chunk = 50000; // 50K primaries per file

for (let i = 1; i < entries + 1; i += chunk) {
  const fileName = `${i}_gen.js`;
  const filler = `
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

const listings = [];
console.time('TIMER');
for (let i = ${i}; i < ${i + chunk}; i += 1) { // ${chunk} listings
  const numberOfReviews = faker.random.number({
    min: 1,
    max: 20,
  });

  const home = {
    homeId: ${i},
    reviews: [],
  };

  for (let j = 1; j <= numberOfReviews; j += 1) {
    const review = {
      id: j,
      review: faker.lorem.sentence(),
      created: moment.utc((faker.date.past())).format("'MMMM YYYY"),
      userId: faker.random.number({
        min: 1,
        max: 100,
      }),
    };
    home.reviews.push(review);
  }
  listings.push(home);
}

fs.writeFile('./DataGen/GeneratedData/${fileName}', JSON.stringify(listings),
  (err) => {
    if (err) {
      return err;
    }
    console.log('${i} - ${i + chunk} were saved!   ||   ', console.timeEnd('TIMER'));
  });
  `;

  fs.writeFile(`./DataGen/scriptGen/${i}_generator.js`, filler);
}
