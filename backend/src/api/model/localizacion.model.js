const db = require("../../config/db");
/**
 * Campos de la tabla localizacion
 * idLoc,IdDepartamento,ciudad
 */

//traer todas las localizaciones
const getLocalizaciones = async () => {
   return new Promise((resolve, reject) => {
      const queryString = "SELECT * FROM localizacion"; //query para la peticion
      db.query(queryString, (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

const locModel = {
    getLocalizaciones,
 };
 
 module.exports = locModel;
 