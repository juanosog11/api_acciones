// import { createPool } from "mysql2/promise.js";
// import config from './config.js'
import pg from "pg";


// export const pool = createPool({
//     host: config.dbhost,
//     user: config.dbuser,
//     password: config.dbpassword,
//     database: config.dbname,
//     port: config.dbport
// })

export  const pool = new pg.Pool(
    {
        connectionString: "postgres://root:fmz3sCXGh4ZZ48to3F38U34dcIA4K8Tp@dpg-cpcbqnfjbltc73ac9v90-a.oregon-postgres.render.com/dbacciones_s6w4",
        ssl:true,
     }
)
