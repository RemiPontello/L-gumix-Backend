var express = require('express');
var router = express.Router();
const db = require('../db_connection');


router.get('/', (req, res) => {
    db.query('SELECT * FROM vegetables', (err, results) => {
      if (err) return res.status(500).send(err);
      res.json(results);
    });
  });

 module.exports = router;
