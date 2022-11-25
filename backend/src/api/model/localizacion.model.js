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
const getAllEstudiantesByIdLoc = async (idLoc) => {
   return new Promise((resolve, reject) => {
      const queryString = "select * from estudiantes est inner join localizacion loc on est.idLoc = loc.idLoc inner join departamentos dep on dep.idDepartamento = loc.idDepartamento and est.idLoc = ?"; //query para la peticion
      db.query(queryString,[idLoc], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};
const getAllEmpleadosByIdLoc = async (idLoc) => {
   return new Promise((resolve, reject) => {
      const queryString = "select * from empleado emp inner join localizacion loc on emp.idLoc = loc.idLoc inner join departamentos dep on dep.idDepartamento = loc.idDepartamento and emp.idLoc = ?"; //query para la peticion
      db.query(queryString,[idLoc], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

const locModel = {
    getLocalizaciones,
    getAllEstudiantesByIdLoc,
    getAllEmpleadosByIdLoc
 };
 
 module.exports = locModel;
 