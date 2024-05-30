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
    url: process.env.DB_URL || "postgres://root:fmz3sCXGh4ZZ48to3F38U34dcIA4K8Tp@dpg-cpcbqnfjbltc73ac9v90-a.oregon-postgres.render.com/dbacciones_s6w4"
}

