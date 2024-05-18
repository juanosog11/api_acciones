import { pool } from '../db.js';



const getAcciones = async (req, res) => {
    try {
        const [ressql] = await pool.query("select * from EmpresasAcciones")
        res.json(ressql[0])
    } catch (error) {
        return res.status(500).json({message: "fallo la consula a la base de datos"})
    }
}


const getAccion = async (req, res) => {
    try {
        const [row] = await pool.query("select * from EmpresasAcciones where simbolo = ?", [req.params.simbolo])

        if (row.length <= 0) {
            return res.status(404).json({ message: "Datos no encontrados" })
        }

        res.json(row[0])
    } catch (error) {
        return res.status(500).json({ message: "fallo la consula a la base de datos" })
    }
}

const getDatosHistorico = async (req, res) => {
    try {
        const [row] = await pool.query("select * from AccionesHistoricas where simbolo_empresa = ? ", [req.params.simbolo_empresa])

        if (row.length <= 0) {
            return res.status(404).json({ message: "Datos no encontrados" })
        }

        res.json(row[0])
    } catch (error) {
        return res.status(500).json({ message: "fallo la consula a la base de datos" })
    }
}

const getDatosHistoricos = async (req, res) => {
    try {
        const [ressql] = await pool.query("select * from AccionesHistoricas")
        res.json(ressql[0])
    } catch (error) {
        return res.status(500).json({ message: "fallo la consula a la base de datos" })
    }
}


export const AccionesController = {
    getAcciones,
    getDatosHistoricos,getAccion,getDatosHistorico
}