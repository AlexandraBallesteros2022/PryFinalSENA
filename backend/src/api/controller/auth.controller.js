const authModel = require("../model/auth.model");

const login = async (req, res) => {
  const { body } = req;
  if (!body.nombreUsuario || !body.contrasenia) {
    res.status(404).send({
      data: {
        error: "falta uno de los campos='contraseña','nombre usuario'",
      },
    });
    return;
  }

  const { nombreUsuario, contrasenia } = body;
  try {
    const { result } = await authModel.login(nombreUsuario, contrasenia); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.send('ok');
  } catch (err) {
    console.log(err);
    return res.status(500).send("error");
  }
};

const signUp = async (req, res) => {
  const { body } = req;

  try {
    const { result } = await authModel.signUp(body); // almacenamos el resultado por si queremos trabajar con el mismo
    return res.send("usuario registrado exitosamente");
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
