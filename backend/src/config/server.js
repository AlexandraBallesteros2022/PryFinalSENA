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

//carpetas estaticas
app.use(express.static(path.join(__dirname, "../../public")));

module.exports = app;
