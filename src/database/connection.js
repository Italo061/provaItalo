const mongoose = require('mongoose')
require('dotenv').config()

const DB_USER = process.env.DB_USER
const DB_PASS = process.env.DB_PASS
const DB_HOST = process.env.DB_HOST
const DB_NAME = process.env.DB_NAME

function main() {
    mongoose.connect(`mongodb+srv://italogoliveira:${DB_PASS}@cluster0.btypeme.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0`)
        .then(() => console.log("Conectado ao banco Mongo!"))
        .catch(err => console.log("Erro ao conectar ao banco Mongo: ", err))
}

module.exports = main
