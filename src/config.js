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
    url: process.env.DB_URL || "postgres://root:LC6kZ6HHQZbEkcszswesTgqf9f9oIZLD@dpg-cp4juaocmk4c73eldrtg-a.oregon-postgres.render.com/dbaccionespostgres://root:LC6kZ6HHQZbEkcszswesTgqf9f9oIZLD@dpg-cp4juaocmk4c73eldrtg-a/dbacciones"
}

