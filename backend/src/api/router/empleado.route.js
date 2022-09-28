const route = require("express").Router();
const empCtr = require("../controller/empleado.controller");

route
  .get("/", empCtr.getEmpleados)

  .get("/:idDocente", empCtr.getOneEmpleado)

  .get("/buscar/:codigoDocente", empCtr.getEmpleadoByCodigoDocente)

  .post("/", empCtr.createEmpleado)

  .put("/:idDocente", empCtr.updateOneEmpleado)

  .delete("/:idDocente", empCtr.deleteOneEmpleado);

module.exports = route;
