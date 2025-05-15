// server/api/contact.ts
import fs from 'fs';
import path from 'path';
import nodemailer from 'nodemailer';
import Handlebars from 'handlebars';
import { H3Event, readBody, sendError } from 'h3';

export default defineEventHandler(async (event: H3Event) => {
  if (event.method === 'GET') {
    return { message: 'Bienvenido a NexosoftDev' };
  }

  if (event.method !== 'POST') {
    return sendError(event, createError({ statusCode: 405, statusMessage: 'Método no permitido' }));
  }

  const body = await readBody(event);
  const config = useRuntimeConfig();

  console.log(config.EMAIL_USER, 'config.EMAIL_USER,')
  const { name, email, message, phone } = body as {
    name: string;
    email: string;
    message: string;
    phone: string;
  };

  const pathCorreoMio = path.join(process.cwd(), 'templates', 'correo_mio.hbs');
  const pathCorreoUsuario = path.join(process.cwd(), 'templates', 'correo_usuario.hbs');
  const templateSource = fs.readFileSync(pathCorreoMio, 'utf-8');
  const templateSourceUser = fs.readFileSync(pathCorreoUsuario, 'utf-8');

  const template = Handlebars.compile(templateSource);
  const templateUser = Handlebars.compile(templateSourceUser);
  const htmlToSend = template({ name, message, email, phone });
  const htmlToSendUser = templateUser({ name });

  const transporter = nodemailer.createTransport({
    service: 'gmail',
    auth: {
      user: config.EMAIL_USER,
      pass: config.EMAIL_PASS,
    },
  });

  const mailToMe = {
    from: config.EMAIL_USER,
    to: config.EMAIL_PASS,
    subject: `Nuevo mensaje de ${name}`,
    html: htmlToSend,
  };

  const mailToUser = {
    from: config.EMAIL_USER,
    to: email,
    subject: 'Gracias por contactarnos',
    html: htmlToSendUser,
  };

  try {
    await transporter.sendMail(mailToMe);
    await transporter.sendMail(mailToUser);
    return { message: 'Correo enviado exitosamente' };
  } catch (err) {
    console.error(err);
    return sendError(event, createError({ statusCode: 500, statusMessage: 'Error al enviar correo' + err }));
  }
});
