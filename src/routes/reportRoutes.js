const express = require("express");
const router = express.Router();

const reportController = require("./../controllers/reportController");

//Rota para geara PDF
router.get("/report/pdf", reportController.exportUserPDF);

module.exports = router;