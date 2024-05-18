import { Router } from "express";
import { AccionesController } from "../controllers/acciones.controller.js";


const router = Router()


router.get('/acciones', AccionesController.getAcciones);

router.get('/acciones/:simbolo', AccionesController.getAccion);

router.get('/Datos_historicos', AccionesController.getDatosHistoricos);

router.get('/Datos_historicos/:simbolo_empresa', AccionesController.getDatosHistorico);



export default router