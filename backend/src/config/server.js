//Variable de entorno
if (process.env.NODE_ENV != "production") {
   require("dotenv").config();
}

//Requerimientos
const express = require("express");
const path = require("path");
const app = express();
const cors = require("cors");

//Configuraciones
const port = process.env.PORT;
app.set("port", port || 3000);

//Middlewares
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cors());

//Rutas
const routeAuth = require("../../src/api/router/auth.route");
const routeEmp = require("../../src/api/router/empleado.route");
const routeEst = require("../../src/api/router/estudiante.route");

app.use("/api/auths", routeAuth);
app.use("/api/empleados", routeEmp);
app.use("/api/estudiantes", routeEst);

module.exports = app;
