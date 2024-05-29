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
        connectionString: "postgres://root:XUbPLF56LKm1zdA4hfqRJTwywYbCWI9F@dpg-cpbriam3e1ms739b0lr0-a.oregon-postgres.render.com/dbacciones_qyyk",
        ssl:true,
     }
)
