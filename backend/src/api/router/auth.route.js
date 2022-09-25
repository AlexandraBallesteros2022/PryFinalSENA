const route = require("express").Router();
const authCtr = require("../controller/auth.controller");

route
  .post("/login", authCtr.login)

  .post("/signup", authCtr.signUp);

module.exports = route;
