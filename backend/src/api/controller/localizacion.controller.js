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
const getAllEstudiantesByIdLoc = async (req, res) => {
   const {params}=req
   console.log(params);
   try {
      const { result } = await locModel.getAllEstudiantesByIdLoc(params.idLoc); // almacenamos el resultado por si queremos trabajar con el mismo
      return res.json(result);
   } catch (err) {
      console.log(err);
      return res.status(500).send("error");
   }
};

const locCtr = {
   getLocalizaciones,
   getAllEstudiantesByIdLoc,
};

module.exports = locCtr;
