const mysql = require('mysql');
const pg = require('pg');
const { Pool } = require('pg');

// const pool = new Pool();

// pool.on('error', (err, client) => {
//   console.error('Unexpected error on idle client', err);
//   process.exit(-1);
// });

const { Client } = pg;

// const connection = mysql.createConnection({
//   host: 'localhost',
//   user: 'root',
//   database: 'reviews',
// });

// connection.connect();


const client = new Client({
  user: 'postgres',
  host: 'localhost',
  database: 'SDC-sql',
  port: 5432,
});

client.connect();

// Get reviews for home, for certain pagination
// FROM reviews INNER JOIN users ON reviews.user_id = users.id WHERE reviews.home_id =

const getSpecificReviews = (min, max, homeId, callback) => {
  const limit = max - min;
  const text = `
  SELECT reviews._id, reviews.review, reviews.created, users.name, users.photo
  FROM reviews INNER JOIN users ON reviews.user_id = users.id
  WHERE reviews.home_id = ${homeId}
  OFFSET ${min - 1}
  LIMIT ${limit}
  `;

  client.query(text, (err, res) => {
    if (err) {
      console.error(err.stack);
    } else {
      // console.log(res.rows);
      callback(res.rows);
    }
  });
};

// Get reviews for home matching a search query

const getFilteredReviews = (query, min, max, homeId, callback) => {
  const limit = max - min;
  const text = `
  SELECT reviews._id, reviews.review, reviews.created, users.name, users.photo
  FROM reviews INNER JOIN users ON reviews.user_id = users.id
  WHERE reviews.home_id = ${homeId}
  AND reviews.review LIKE '%${query}%'
  OFFSET ${min - 1}
  LIMIT ${limit}
  `;

  client.query(text, (err, res) => {
    if (err) {
      callback(err.stack);
    } else {
      callback(res.rows);
    }
  });
};

// Add Review

const addReview = (homeId, userId, review, callback) => {
  // console.log('************************************************* ADD REVIEW *************************************************');
  const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  const created = months[new Date().getMonth()] + ' ' + new Date().getFullYear();
  const text = `
  INSERT INTO reviews (home_id, review, created, user_id)
  VALUES ($1, $2, $3, $4)
  `;

  // console.log('ADD REVIEW HIT', created);
  client.query(text, [homeId, review, created, userId], (err, res) => {
    if (err) {
      console.error(err.stack);
      callback(err.stack);
    } else {
      // console.log('posted review');
      callback(null, res.rows);
    }
  });
};
// Delete Review

const deleteReview = (id, homeId, callback) => {
  const text = `
  DELETE FROM reviews
  WHERE home_id = ${homeId}
  AND _id = ${id}
  `;

  client.query(text, (err, res) => {
    if (err) {
      callback(err.stack);
    } else {
      callback(res.rows);
    }
  });
};

// Delete home

const deleteHome = (homeId, callback) => {
  const text = `
  DELETE FROM reviews
  WHERE home_id = ${homeId}
  `;

  client.query(text, (err, res) => {
    if (err) {
      callback(err.stack);
    } else {
      callback(res.rows);
    }
  });
};

// Update Review

const updateReview = (id, homeId, review, callback) => {
  const text = `
  UPDATE reviews
  SET review = ${review}
  WHERE home_id = ${homeId}
  AND _id = ${id}
  `;

  client.query(text, (err, res) => {
    if (err) {
      callback(err.stack);
    } else {
      callback(res.rows);
    }
  });
};

// Update User

const updateUser = (id, name, photo, callback) => {
  const text = `
  UPDATE users
  SET name = ${name}, photo = ${photo}
  WHERE id = ${id}
  `;

  client.query(text, (err, res) => {
    if (err) {
      callback(err.stack);
    } else {
      callback(res.rows);
    }
  });
};

// Insert User

const addUser = (name, photo, callback) => {
  const text = `
  INSERT INTO users (name, photo)
  VALUES (${name}, ${photo})
  `;

  client.query(text, (err, res) => {
    if (err) {
      callback(err.stack);
    } else {
      callback(res.rows);
    }
  });
};

/*
const getSpecificReviews = (min, max, homeId, callback) => {
  connection.query(
    `SELECT * FROM reviews WHERE home_id = ${homeId} AND id BETWEEN ${min} AND ${max}`, (err, results) => {
      if (err) {
        callback(err);
      }
      callback(results);
    }
  )
};


const getFilteredReviews = (query, homeId, callback) => {
  connection.query(
    `SELECT * FROM reviews WHERE review LIKE "%${query}%" 
     AND id BETWEEN 1 AND 201`, (err, results) => {
      if (err) {
        callback(err);
      }
      callback(results);
    }
  )
};

const addReview = (data, homeId, callback) => {
  const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
  const date = new Date();
  const created = months[date.getMonth()] + date.getFullYear();
  connection.query(
    `INSERT INTO reviews (review, created, user, photo) VALUES (${data.review}, ${created}, ${data.user}, ${data.photo})`, (err, results) => {
      if (err) {
        callback(err);
      }
      callback(results);
    }
  )
};

const deleteReview = (id, homeId, callback) => {
  connection.query(
    `DELETE FROM reviews WHERE id = ${id}`, (err, results) => {
      if (err) {
        callback(err);
      }
      callback(results);
    }
  )
};

const updateReview = (data, homeId, callback) => {
  connection.query(
    `UPDATE reviews SET review = ${data.review} WHERE id = ${data.id}`, (err, results) => {
      if (err) {
        callback(err);
      }
      callback(results);
    }
  )
};

const getSearchReviews = (min, max, query, homeId, callback) => {
  connection.query(
    `SELECT * FROM reviews WHERE review LIKE "%${query}%" 
      LIMIT 10 OFFSET ${min}`, (err, results) => {
      if (err) {
        callback(err);
      }
      callback(results);
    }
  )
};

module.exports.connection = connection;
module.exports.getSpecificReviews = getSpecificReviews;
module.exports.getFilteredReviews = getFilteredReviews;
module.exports.getSearchReviews = getSearchReviews;
module.exports.addReview = addReview;
module.exports.deleteReview = deleteReview;
module.exports.updateReview = updateReview;

*/

module.exports.connection = client;
module.exports.getSpecificReviews = getSpecificReviews;
module.exports.getFilteredReviews = getFilteredReviews;
module.exports.getSearchReviews = deleteReview;
module.exports.addReview = addReview;
module.exports.deleteReview = deleteReview;
module.exports.deleteHome = deleteHome;
module.exports.updateReview = updateReview;
module.exports.updateUser = updateUser;
module.exports.addUser = addUser;
