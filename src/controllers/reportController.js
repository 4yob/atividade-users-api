const PDFDocument = require("pdfkit");

const userModel = require("../models/userModel");

const exportUserPDF = async (req, res) => {
    try {
        const users = await userModel.getUsers();

        res.setHeader("Content-Type", "application/pdf");
        res.setHeader("Content-Disposition", "inline; filename=users.pdf");

        const doc = new PDFDocument();
        doc.pipe(res);

        //Título
        doc.fontSize(20).text("Usuários do App", {align: "center"});
        doc.moveDown();

        //Id
        doc.fontSize(14).text("IDs");
        doc.moveDown();

        users.forEach((user) => {
            doc.text(
                `${user.id}`
            );
        });

        //Nome
        doc.moveDown();
        doc.fontSize(14).text("Nomes");
        doc.moveDown();

        users.forEach((user) => {
            doc.text(
                `${user.name}`
            );
        });

        //Email
        doc.moveDown();
        doc.fontSize(14).text("E-mails");
        doc.moveDown();

        users.forEach((user) => {
            doc.text(
                `${user.email}`
            );
        });

        doc.end();
    } catch (error) {
        res.status(500).json({ message: "Erro ao gerar o PDF" });
    }
}

module.exports = { exportUserPDF }