var express = require('express');
var router = express.Router();

var nodemailer = require('nodemailer');
var contactoModel = require ('../models/contactoModel')



/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto', {
    isContacto: true

  });
});



router.post('/', async (req, res, next) => {

  console.log(req.body)

  var nombre = req.body.nombre
  var email = req.body.email
  var apellido = req.body.apellido
  var mensaje = req.body.mensaje


  var obj = {
    to: 'falcon.cristian@gmail.com',
    subject: 'contacto desde la web',
    html: nombre + apellido + " se contacto a traves y quiere mas info a este correo:" + email + "y dijo este mensaje " + mensaje
  } //cierre var obj


  var transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,

    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS

    } //Cierro AUTH

  }) // cierro transporter

  var info = await transporter.sendMail(obj)



res.render('contacto', {
  isContacto: true,
  message: 'mensaje enviado correctamente'

})

})

router.post ('/', function (req,res,next) {
  contactoModel.insertContacto(req.body)
  res.render('contacto')
})

module.exports = router;