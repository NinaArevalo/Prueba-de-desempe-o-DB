const express = require ("express");
require ("dotenv").config();

const connectMongo = require ("./config/mongo.js");
const productRoutes =require("./routes/product.routes.js");

const app = express();

app.use(express.json());
connectMongo();

app.get("/", (req, res) => {
    res.send ("API Running");
});

app.use("/products", productRoutes);

app.listen(process.env.PORT, () => {
    console.log('Server running on port ${process.env.PORT}');
});


