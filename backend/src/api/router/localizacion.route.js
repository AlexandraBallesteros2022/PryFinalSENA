const route = require("express").Router();
const locCtr = require("../controller/localizacion.controller");

route
   .get("/", locCtr.getLocalizaciones)

   .get("/buscar/estudiante/:idLoc", locCtr.getAllEstudiantesByIdLoc)

   .get("/buscar/empleado/:idLoc", locCtr.getAllEmpleadosByIdLoc);

module.exports = route;
