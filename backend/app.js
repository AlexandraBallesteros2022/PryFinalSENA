const app = require("./src/config/server.js");
const path = require("path");

//web
app.get("/", (req, res) => {
   res.sendFile(path.resolve("public/index.html"));
});

//Rutas
const routeAuth = require("./src/api/router/auth.route");
const routeEmp = require("./src/api/router/empleado.route");
const routeEst = require("./src/api/router/estudiante.route");
const routeLoc = require("./src/api/router/localizacion.route");

app.use("/api/auths", routeAuth);
app.use("/api/empleados", routeEmp);
app.use("/api/estudiantes", routeEst);
app.use("/api/localizacion", routeLoc);

app.listen(app.get("port"), () => {
   console.log(`Servidor en el http://localhost:${app.get("port")}`);
});
