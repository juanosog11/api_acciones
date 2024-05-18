import express from 'express';
import acciones from "./routers/acciones.routes.js";
import indexroutes from "./routers/index.routes.js"

const app = express();

app.listen(3000, () => {
    console.log('Server running on port 3000');
});

app.use("/api",acciones)
app.use(indexroutes) 

app.use((req,res,next) => {
    res.status(404).json({message: "endpoint not found "})
})


