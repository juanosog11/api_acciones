import { pool } from '../db.js';



const getAcciones = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT * FROM EmpresasAcciones");
        res.json(rows);
    } catch (error) {
        console.error("Error al obtener las acciones:", error);
        res.status(500).json({ message: "Fallo al obtener las acciones de la base de datos" });
    }
}



const getAccion = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT * FROM EmpresasAcciones WHERE simbolo = $1", [req.params.simbolo]);

        if (rows.length === 0) {
            return res.status(404).json({ message: "Datos no encontrados" });
        }

        res.json(rows[0]);
    } catch (error) {
        console.error("Error al obtener la acción:", error);
        res.status(500).json({ message: "Fallo al obtener la acción de la base de datos" });
    }
}


const getDatosHistorico = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT * FROM AccionesHistoricas WHERE simbolo_empresa = $1", [req.params.simbolo_empresa]);

        if (rows.length === 0) {
            return res.status(404).json({ message: "Datos no encontrados" });
        }

        res.json(rows); // Devolver todos los datos históricos para el símbolo de empresa especificado
    } catch (error) {
        console.error("Error al obtener los datos históricos:", error);
        res.status(500).json({ message: "Fallo al consultar la base de datos para obtener los datos históricos" });
    }
}



const getDatosHistoricos = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT * FROM AccionesHistoricas");

        res.json(rows);
    } catch (error) {
        console.error("Error al obtener los datos históricos:", error);
        res.status(500).json({ message: "Fallo al consultar la base de datos para obtener los datos históricos" });
    }
}

const getAccionesPorPais = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT * FROM EmpresasAcciones WHERE pais = $1", [req.params.pais]);

        if (rows.length === 0) {
            return res.status(404).json({ message: "Datos no encontrados" });
        }

        res.json(rows); // Devolver todas las acciones para el país especificado
    } catch (error) {
        console.error("Error al obtener las acciones por país:", error);
        res.status(500).json({ message: "Fallo al consultar la base de datos para obtener las acciones por país" });
    }
}

const getPaises = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT pais FROM EmpresasAcciones");

        if (rows.length === 0) {
            return res.status(404).json({ message: "Datos no encontrados" });
        }

        res.json(rows); // Devolver todas las acciones para el país especificado
    } catch (error) {
        console.error("Error al obtener las acciones por país:", error);
        res.status(500).json({ message: "Fallo al consultar la base de datos para obtener las acciones por país" });
    }
}

const getMoneda = async (req, res) => {
    try {
        const { rows } = await pool.query("SELECT simbolo_moneda FROM EmpresasAcciones");

        if (rows.length === 0) {
            return res.status(404).json({ message: "Datos no encontrados" });
        }

        res.json(rows); // Devolver todas las acciones para el país especificado
    } catch (error) {
        console.error("Error al obtener las acciones por país:", error);
        res.status(500).json({ message: "Fallo al consultar la base de datos para obtener las acciones por país" });
    }
}



export const AccionesController = {
    getAcciones,
    getDatosHistoricos, getAccion, getDatosHistorico, getAccionesPorPais, getPaises,getMoneda
}