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
        connectionString: "postgres://root:LC6kZ6HHQZbEkcszswesTgqf9f9oIZLD@dpg-cp4juaocmk4c73eldrtg-a.oregon-postgres.render.com/dbacciones",
        ssl:true,
     }
)
