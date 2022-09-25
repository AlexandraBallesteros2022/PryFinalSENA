const authModel = require("../model/auth.model");

const login = async (req, res) => {
  const { body } = req;

  const { nombreUsuario, contrasenia } = body;
  try {
    const { result } = await authModel.login(nombreUsuario, contrasenia); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json(result);
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const signUp = async (req, res) => {
  const { body } = req;

  try {
    const { result } = await authModel.signUp(body); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.json("usuario registrado exitosamente");
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const authCtr = {
  login,
  signUp,
};

module.exports = authCtr;
