require("dotenv").config();
const express = require("express");
const cors = require("cors");
const usersRoutes = require("./src/routes/usersRoutes");

const app = express ();
app.use(cors());
app.use(express.json());

app.use("/api", usersRoutes);

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
    res.send("Hello World!");
});

app.listen(PORT, () => {
    console.log(`⚡Server rodando em http://localhost:${PORT}`);
});