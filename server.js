require('newrelic');
require('dotenv').config();
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const redis = require('redis');
const db = require('./database/index.js');

const REDIS_PORT = 6379;

const app = express();
const client = redis.createClient(REDIS_PORT);

app.use('/homes/:homeId', express.static(path.join(__dirname, './public')));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});

/*
    **  CACHE-ING FUNCTIONS **
*/

const cache = (req, res, next) => {
  // console.log('REDIS');
  const idNumber = parseInt(req.params.id);
  const homeId = parseInt(req.params.homeId);
  let key;
  if (!req.params.query) {
    key = `${homeId}_${idNumber}`;
  } else {
    const { query } = req.params;
    key = `${homeId}_${idNumber}_${query}`;
  }
  // console.log('KEY', key);
  client.get(key, (err, data) => {
    if (data !== null) {
      // console.log('LOADED FROM CACHE', JSON.parse(data));
      res.send(JSON.parse(data));
    } else {
      // console.log({ data });
      next();
    }
  });
};

/*
     ** ROUTES **
*/

app.get('/homes/:homeId/reviews/:id', bodyParser.json(), cache, (req, res) => {
  // console.log('GET 1');
  const idNumber = parseInt(req.params.id);
  const homeId = parseInt(req.params.homeId);
  const min = (idNumber * 10) - 9;
  const max = idNumber * 10;
  // console.log('SERVER', 'HOME : ', homeId, 'PAGE:', idNumber); // TO REMOVE
  db.getSpecificReviews(min, max, homeId, (results) => {
    // console.log('RESULTS', results);
    client.setex(`${homeId}_${idNumber}`, 600, JSON.stringify(results));
    res.send(results);
  });
});

/*
      CHANGE END POINTS TO ALWAYS GO TO /homes/:homeId
*/
app.get('/homes/:homeId/reviews/queried/:query/:id', bodyParser.json(), cache, (req, res) => {
  // console.log('GET 2');
  const idNumber = parseInt(req.params.id);
  const homeId = parseInt(req.params.homeId);
  const min = (idNumber * 10) - 9;
  const max = idNumber * 10;
  const { query } = req.params;
  // console.log(query, min, max, homeId);
  db.getFilteredReviews(req.params.query, min, max, homeId, (results) => {
    client.setex(`${homeId}_${idNumber}_${query}`, 600, JSON.stringify(results));
    res.status(200).send(results);
  });
});

app.post('/homes/:homeId/:userId', bodyParser.json(), (req, res) => {
  // console.log('POST');
  const homeId = parseInt(req.params.homeId);
  const userId = parseInt(req.params.userId);
  // console.log(homeId, userId, req.body);
  db.addReview(homeId, userId, req.body, (err, results) => {
    if (err) {
      // console.log('********************************')
      console.error(err);
    } else {
      // console.log('Posted', results);
      res.status(201).send(results);
    }
  });
});

app.delete('/homes/:homeId/reviews/:reviewId', bodyParser.json(), (req, res) => {
  db.deleteReview(req.params.reviewId, (err, result) => {
    if (err) {
      console.error(err);
    } else {
      // console.log('DELETED', result);
      res.status(204).send(result);
    }
  });
});

app.delete('/homes/:homeId/home', bodyParser.json(), (req, res) => {
  db.deleteHome(req.params.homeId, (result) => {
    // console.log('DELETED', result);
    res.status(204).send();
  });
});

app.put('/homes/:homeId/reviews/:reviewId', bodyParser.json(), (req, res) => {
  // console.log('PUT', req.data);
  db.updateReview(req.params.reviewId, req.data, (result) => {
    console.log('UPDATED', result);
    res.status(204).send();
  });
});


app.get('/reviews/queried/:query/:id', bodyParser.json(), (req, res) => {
  const idNumber = parseInt(req.params.id);
  const max = idNumber * 10; 
  const min = max - 9;
  const query = req.params.query;

  db.getSearchReviews(min, max, query, (results) => {
    res.send(results);
  });
});


app.listen(process.env.PORT, () => console.log('listening on port 3001...'));

// *** IMPORTS ON DB *** //

// connection = client;
// getSpecificReviews = getSpecificReviews;
// getFilteredReviews = getFilteredReviews;
// getSearchReviews = deleteReview;
// addReview = addReview;
// deleteReview = deleteReview;
// updateReview = updateReview;
// updateUser = updateUser;
// addUser = addUser;
