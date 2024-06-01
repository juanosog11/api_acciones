import { Router } from "express";
import { AccionesController } from "../controllers/acciones.controller.js";


const router = Router()


router.get('/acciones', AccionesController.getAcciones);

router.get('/acciones/pais/:pais', AccionesController.getAccionesPorPais);

router.get('/acciones/pais', AccionesController.getPaises);

router.get('/acciones/moneda', AccionesController.getSimbolo_Moneda);

router.get('/acciones/moneda_nombre', AccionesController.getMoneda_nombre);

router.get('/acciones/moneda_nombre/:simbolo', AccionesController.getMoneda_nombre_simbolo);

router.get('/acciones/:simbolo', AccionesController.getAccion);

router.get('/Datos_historicos', AccionesController.getDatosHistoricos);

router.get('/Datos_historicos/:simbolo_empresa', AccionesController.getDatosHistorico);



export default router