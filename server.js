import http from 'http';
import fs from 'fs';
import express from 'express';
const app = express();
import path from 'path';
import bodyparser from 'body-parser';
import mysql from 'mysql';

const config = {
  host: 'localhost',
  port: 3306,
  user: 'root',
  password: 'cybage@123',
  database: 'mydb'
};

app.use(bodyparser.urlencoded({ extended: false }));

app.use(express.static(path.join(__dirname, 'public')));
app.use(express.static(path.join(__dirname, '/node_modules/jquery/dist/')));
app.use(express.static(path.join(__dirname, '/js/')));

app.get('/', (req, res) => {

  var data = fs.readFile('table.html', function (err, data) {
    res.setHeader('Content-Type', 'text/html');
    res.send(data);
  });
});

app.get('/path1', (req, res) => {
  var conn = mysql.createConnection(config);
  conn.connect();
  conn.query('select *from npat', function (err, result) {
    if (err) {
      console.log(err);
    }
    else {
      res.send(result);
    }
  });
  conn.end();
});

app.post('/addrecord', (req, res) => {
  var conn = mysql.createConnection(config);
  conn.connect(function (err) {
    if (err) throw err;
    console.log('conneted');
  });
  var qry = "insert into npat (name,place,animal,thing) values ('" + req.body.name + "','" + req.body.place + "','" + req.body.animal + "','" + req.body.thing + "')";
  conn.query(qry, function (err, result) {
    if (err) {
      throw err;
    }
    else {
      res.redirect("http://localhost:7000/");
    }
  });
  conn.end();
});

app.get('/delete/:id', (req, res) => {
  var conn = mysql.createConnection(config);
  conn.connect(function (err) {
    if (err) throw err;
    console.log('conneted');
  });
  var qry = "delete from npat where id=" + req.params.id;
  conn.query(qry, function (err, result) {
    if (err) {
      throw err;
    }
    else {
      res.redirect("http://localhost:7000/");
    }
  });
  conn.end();
});

app.listen(7000, function () {
  console.log('Server running on port 7000');
});
