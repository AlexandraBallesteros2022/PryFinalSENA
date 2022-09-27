const route = require("express").Router();
const estCtr = require("../controller/estudiante.controller");

route
   .get("/", estCtr.getEstudiantes)

   .get("/:idEstudiante", estCtr.getOneEstudiante)

   .get("/buscar/:documento", estCtr.getEstudianteByDocumento)

   .post("/", estCtr.createEstudiante)

   .patch("/:idEstuadiante", estCtr.updateOneEstudiante)

   .delete("/:idEstudiante", estCtr.deleteOneEstudiante);

module.exports = route;
