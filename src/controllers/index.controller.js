import {pool} from "../db.js";

export const ping = async (req, res) => {
    try {
        // Ejecuta la consulta
        const result = await pool.query("SELECT 'pong' AS result");

        // Verifica si hay filas en el resultado
        if (result.rowCount > 0) {
            // Obtiene la primera fila del resultado
            const firstRow = result.rows[0];

            // Envía la respuesta
            res.json(firstRow);
        } else {
            res.status(500).json({ error: "No rows returned from query" });
        }
    } catch (error) {
        console.error(error);
        res.status(500).json({ error: error.message });
    }
};
