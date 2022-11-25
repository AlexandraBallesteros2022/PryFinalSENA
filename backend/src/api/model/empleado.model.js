const db = require("../../config/db");
/**
 * Campos de la tabla empleado:
 * nombreCompleto,nombreUsuario,correoE,contrasenia,codigoDocente
 */

//traer todos los empleados
const getEmpleados = async () => {
   return new Promise((resolve, reject) => {
      const queryString = "select * FROM empleado emp INNER JOIN localizacion loc ON emp.idLoc = loc.idLoc INNER JOIN departamentos dep ON dep.idDepartamento = loc.idDepartamento"; //query para la peticion
      db.query(queryString, (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         console.log(result);
         return resolve(data);
      });
   });
};

//traer un solo empleado por id docente
const getOneEmpleado = async (idDocente) => {
   return new Promise((resolve, reject) => {
      const queryString = "select * FROM empleado emp INNER JOIN localizacion loc ON emp.idLoc = loc.idLoc INNER JOIN departamentos dep ON dep.idDepartamento = loc.idDepartamento WHERE idDocente = ?"; //query para la peticion
      db.query(queryString, [idDocente], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//traer un empleado por codigo de docente
const getEmpleadoByCodigoDocente = async (codigoDocente) => {
   return new Promise((resolve, reject) => {
      const queryString = "SELECT * FROM empleado WHERE codigoDocente = ?"; //query para la peticion
      db.query(queryString, [codigoDocente], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//crear un empleado
const createEmpleado = async (body = { ...args }) => {
   return new Promise((resolve, reject) => {
      const queryString = "INSERT INTO empleado SET ?"; //query para la peticion
      db.query(queryString, [body], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//actualizar empleado
const updateOneEmpleado = async (idDocente, body = { ...args }) => {
   return new Promise((resolve, reject) => {
      const queryString = "UPDATE empleado SET ? WHERE idDocente = ?"; //query para la peticion
      db.query(queryString, [body, idDocente], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//eliminar un empleado por id
const deleteOneEmpleado = async (idDocente) => {
   return new Promise((resolve, reject) => {
      const queryString = "DELETE FROM empleado WHERE idDocente = ?"; //query para la peticion
      db.query(queryString, [idDocente], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

const empModel = {
   getEmpleados,
   getOneEmpleado,
   getEmpleadoByCodigoDocente,
   createEmpleado,
   updateOneEmpleado,
   deleteOneEmpleado,
};

module.exports = empModel;
