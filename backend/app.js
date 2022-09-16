const app = require("./src/config/server.js");
const path = require("path");
const db = require('./src/config/db')



app.listen(app.get("port"), () => {
   console.log(`Servidor en el http://localhost:${app.get("port")}`);
});
