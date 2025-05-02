// db_connection.js
const mysql = require('mysql2');
//require('dotenv').config(); // si tu utilises .env

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'db_legumix'
});

db.connect((err) => {
  if (err) {
    console.error('Erreur de connexion à MySQL :', err);
  } else {
    console.log('Connecté à la base de données MySQL');
  }
});

module.exports = db;
