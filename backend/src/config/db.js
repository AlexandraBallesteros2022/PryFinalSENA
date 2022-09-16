const mysql = require("mysql");
const conexion = mysql.createConnection({
   host: process.env.HOST,
   database: process.env.DB_NAME,
   user: process.env.DB_USER,
   password: process.env.DB_PASS,
   port: process.env.DB_PORT,
});

conexion.connect((error) => {
   if (error) {
      throw error;
   } else {
      console.log("DB conectada");
   }
});

module.exports = conexion;
