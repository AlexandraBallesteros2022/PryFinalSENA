const mysql = require("mysql");
const conexion = mysql.createConnection({
   host: process.env.DB_HOST,
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

// conexion.query('select * from estudiantes est inner join localizacion loc on est.idLoc = loc.idLoc inner join departamentos dep on dep.idDepartamento = loc.idDepartamento',(error, result, fields) => {
//    if (error) console.log(error); 
//    const data = { result, fields };
//    console.log(data.result);
// });

module.exports = conexion;
