var express = require('express');
var database = require('./database');
var router = express.Router();

/* GET etbs-users listing. */
router.get('/', function(req, res, next) {

  var conn = database.getConnection();

  if (conn) {
    var sql = 
      `SELECT extension, clientid, name, orgid, exttype,
        has_license, budget, balance, tenant, authorization_code,
        rent_charge, created_at, updated_on 
      FROM extensions`;

    conn.query(sql, function (err, result) {
      res.render('v1/etbsExtensions', 
        {
          extensions: result
        }
      );

      conn.end();
    });
  } else {
    res.status(500).send('Can not connect to database');
  }
});

module.exports = router;
