const mysql = require('mysql');
// const fakeUsers = require('./fakeUsers');
// const fakeHomes = require('./fakeHomes.js');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  database: 'reviews',
});

connection.connect();

const getSpecificReviews = (min, max, homeId, callback) => {
  connection.query(
    `SELECT * FROM reviews WHERE id BETWEEN ${min} AND ${max}`, (err, results) => {
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
