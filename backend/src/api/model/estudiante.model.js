const db = require("../../config/db");
/**
 * Campos de la tabla estudiantes
 * Documento, nombreCompleto, correoE, celular, ciudad, departamento, barrio, direccion, estratoSocioEconomico, conviveCon, ingresos, quienCubrePasajes, profesionPadre, profesionMadre, tieneVehiculoPropio, marcaVehiculo, tipoVehiculo, bachilleratoCulminado, InstitucionCulmino, deportePractica, estudiosSuperiores
 */

//traer todos los estudiantes
const getEstudiantes = async () => {
   return new Promise((resolve, reject) => {
      const queryString = "SELECT * FROM estudiantes"; //query para la peticion
      db.query(queryString, (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//traer un solo estudiantes por id estudiante
const getOneEstudiante = async (idEstudiante) => {
   return new Promise((resolve, reject) => {
      const queryString = "SELECT * FROM estudiantes WHERE idEstudiante = ?"; //query para la peticion
      db.query(queryString, [idEstudiante], (error, result, fields) => {
         if (error) return reject(error);
         console.log(result);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//traer un estudiante por Documento
const getEstudianteBydocumento = async (documento) => {
   return new Promise((resolve, reject) => {
      const queryString = "SELECT * FROM estudiantes WHERE documento = ?"; //query para la peticion
      db.query(queryString, [documento], (error, result, fields) => {
         if (error) return reject(error);
         console.log(result);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//crear un estudiante
const createEstudiante = async (body = { ...args }) => {
   return new Promise((resolve, reject) => {
      const queryString = "INSERT INTO estudiantes SET ?"; //query para la peticion
      db.query(queryString, [body], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//actualizar estudiante
const updateOneEstudiante = async (idEstudiante, body = { ...args }) => {
   return new Promise((resolve, reject) => {
      const queryString = "UPDATE estudiantes SET ? WHERE idEstudiante = ?"; //query para la peticion
      db.query(queryString, [body, idEstudiante], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

//eliminar un estudiante por id
const deleteOneEstudiante = async (idEstudiante) => {
   return new Promise((resolve, reject) => {
      const queryString = "DELETE FROM estudiantes WHERE idEstudiante = ?"; //query para la peticion
      db.query(queryString, [idEstudiante], (error, result, fields) => {
         if (error) return reject(error);
         const data = { result, fields };
         return resolve(data);
      });
   });
};

const estModel = {
   getEstudiantes,
   getOneEstudiante,
   getEstudianteBydocumento,
   createEstudiante,
   updateOneEstudiante,
   deleteOneEstudiante,
};

module.exports = estModel;
