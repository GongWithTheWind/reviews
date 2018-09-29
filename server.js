require('dotenv').config();
const express = require('express');
const path = require('path');
const bodyParser = require('body-parser');
const db = require('./database/index.js');

const app = express();

app.use('/homes/:homeId', express.static(path.join(__dirname, './public')));

app.use((req, res, next) => {
  res.header('Access-Control-Allow-Origin', '*');
  res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept');
  next();
});


app.get('/homes/:homeId/reviews/:id', bodyParser.json(), (req, res) => {
  const idNumber = parseInt(req.params.id);
  const homeId = parseInt(req.params.homeId);
  const min = (idNumber * 10) - 9;
  const max = idNumber * 10;
  console.log('SERVER', homeId);
  db.getSpecificReviews(min, max, homeId, (results) => {
    res.send(results);
  });
});


app.get('/reviews/queried/:query', bodyParser.json(), (req, res) => {
  console.log('GET 2');
  db.getFilteredReviews(req.params.query, (results) => {
    res.status(200).send(results);
  });
});

app.post('/homes/:homeId', bodyParser.json(), (req, res) => {
  console.log('POST');
  db.addReview(req.data, (results) => {
    console.log('Posted', results);
    res.status(201).send();
  });
});

app.delete('/homes/:homeId/reviews/:reviewId', bodyParser.json(), (req, res) => {
  db.deleteReview(req.params.reviewId, (result) => {
    console.log('DELETED', result);
    res.status(204).send();
  });
});

app.put('/homes/:homeId/reviews/:reviewId', bodyParser.json(), (req, res) => {
  console.log('PUT', req.data);
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
