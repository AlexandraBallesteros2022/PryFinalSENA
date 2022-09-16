const app = require("./src/config/server.js");
const path = require("path");
const routeEmp = require("./src/api/router/empleado.route");
const routeEst = require("./src/api/router/estudiante.route");

app.use("/empleados", routeEmp);
app.use("/estudiantes", routeEst);

app.listen(app.get("port"), () => {
   console.log(`Servidor en el http://localhost:${app.get("port")}`);
});
