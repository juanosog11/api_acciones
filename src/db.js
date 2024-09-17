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
        connectionString: "postgresql://acciones_xfzg_user:LlpbWhiS2JKVHgfqPD6RWCsvKN22aZjq@dpg-crl066rqf0us73cmc8ng-a.oregon-postgres.render.com/acciones_xfzg",
        ssl:true,
     }
)
