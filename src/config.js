import { config } from 'dotenv'

config()

// export default {
//     port: process.env.PORT || 3000,
//     dbuser: process.env.DB_USER || "root",
//     dbpassword: process.env.DB_PASSWORD,
//     dbhost: process.env.DB_HOST || "localhost",
//     dbport: process.env.DB_PORT || "3306",
//     dbname: process.env.DB_NAME || "Acciones",
// }

export default {
    url: process.env.DB_URL || "postgresql://acciones_xfzg_user:LlpbWhiS2JKVHgfqPD6RWCsvKN22aZjq@dpg-crl066rqf0us73cmc8ng-a.oregon-postgres.render.com/acciones_xfzg"
}

