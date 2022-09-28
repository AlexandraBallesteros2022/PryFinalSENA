const empModel = require("../model/empleado.model");

const getEmpleados = async (req, res) => {
  try {
    const { result } = await empModel.getEmpleados(); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const getOneEmpleado = async (req, res) => {
  const { params } = req;

  if (!params.idDocente) {
    res.status(404).send({
      data: { error: "falta informacion en los parametros" },
    });
    return;
  }

  const { idDocente } = params;

  try {
    const { result } = await empModel.getOneEmpleado(idDocente); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const getEmpleadoByCodigoDocente = async (req, res) => {
  const { params } = req;

  if (!params.codigoDocente) {
    return;
  }

  const { codigoDocente } = params;
  try {
    const { result } = await empModel.getEmpleadoByCodigoDocente(codigoDocente); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const createEmpleado = async (req, res) => {
  const { body } = req;

  try {
    const { result } = await empModel.createEmpleado(body); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("¡Empleado creado exitosamente!");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const updateOneEmpleado = async (req, res) => {
  const { body, params } = req;

  const { idDocente } = params;

  try {
    const { result } = await empModel.updateOneEmpleado(idDocente, body); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("¡Empleado Actualizado exitosamente!");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const deleteOneEmpleado = async (req, res) => {
  const { params } = req;

  const { idDocente } = params;

  try {
    const { result } = await empModel.deleteOneEmpleado(idDocente); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("¡Empleado eliminado exitosamente!");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const empCtr = {
  getEmpleados,
  getOneEmpleado,
  getEmpleadoByCodigoDocente,
  createEmpleado,
  updateOneEmpleado,
  deleteOneEmpleado,
};

module.exports = empCtr;
