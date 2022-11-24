const route = require("express").Router();
const locCtr = require("../controller/localizacion.controller");

route
   .get("/", locCtr.getLocalizaciones)

//    .get("/:idEstudiante", locCtr.getOneEstudiante)

//    .get("/buscar/:documento", locCtr.getEstudianteByDocumento)

//    .post("/", locCtr.createEstudiante)

//    .put("/:idEstudiante", locCtr.updateOneEstudiante)

//    .delete("/:idEstudiante", locCtr.deleteOneEstudiante);

module.exports = route;