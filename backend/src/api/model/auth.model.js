const db = require("../../config/db");
const bcrypt = require("bcrypt");

const login = async (nombreUsuario, contrasenia) => {
  return new Promise((resolve, reject) => {
    const queryString = "SELECT * FROM empleado WHERE nombreUsuario = ?"; //query para la peticion
    db.query(queryString, [nombreUsuario], async (error, result, fields) => {
      if (error) {
        return reject(error);
      }
      if (
        result.length == 0 ||
        !(await bcrypt.compare(contrasenia, result[0].contrasenia))
      ) {
        return reject(error);
      }
      const data = { result, fields };
      return resolve(data);
    });
  });
};

const signUp = async (body = { ...args }) => {
  let passHash = await bcrypt.hash(body.contrasenia, 8);
  body.contrasenia = passHash;

  return new Promise((resolve, reject) => {
    const queryString = "INSERT INTO empleado SET ?"; //query para la peticion
    db.query(queryString, [body], async (error, result, fields) => {
      if (error) {
        return reject(error);
      }
      const data = { result, fields };
      return resolve(data);
    });
  });
};

const authModel = { login, signUp };

module.exports = authModel;
