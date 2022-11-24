const locModel = require("../model/localizacion.model");

const getLocalizaciones = async (req, res) => {
  try {
    const { result } = await locModel.getLocalizaciones(); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const locCtr = {
    getLocalizaciones,
  };
  
  module.exports = locCtr;