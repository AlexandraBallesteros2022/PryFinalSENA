const estModel = require("../model/estudiante.model");

const getEstudiantes = async (req, res) => {
  try {
    const { result } = await estModel.getEstudiantes(); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const getOneEstudiante = async (req, res) => {
  const { params } = req;
  if (!params.idEstudiante) {
    res.status(404).send({
      data: { error: "falta informacion en los parametros" },
    });
    return;
  }
  try {
    const { result } = await estModel.getOneEstudiante(params.idEstudiante); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.status(200).send(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const getEstudianteByDocumento = async (req, res) => {
  const { body } = req;

  if (!body.documento) {
    return;
  }

  const { documento } = body;
  try {
    const { result } = await estModel.getEstudianteByDocumento(documento); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.status(200).send(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const createEstudiante = async (req, res) => {
  const { body } = req;

  try {
    const { result } = await estModel.createEstudiante( body ); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("¡Estudiante creado exitosamente!");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const updateOneEstudiante = async (req, res) => {
  const { body, params } = req;

  const { idEstudiante } = params;

  try {
    const { result } = await estModel.updateOneEstudiante(idEstudiante, body); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("¡Estudiante Actualizado exitosamente!");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const deleteOneEstudiante = async (req, res) => {
  const { params } = req;

  const { idEstudiante } = params;

  try {
    const { result } = await estModel.deleteOneEstudiante(idEstudiante); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("¡Estudiante eliminado exitosamente!");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const estCtr = {
  getEstudiantes,
  getOneEstudiante,
  getEstudianteByDocumento,
  createEstudiante,
  updateOneEstudiante,
  deleteOneEstudiante,
};

module.exports = estCtr;
