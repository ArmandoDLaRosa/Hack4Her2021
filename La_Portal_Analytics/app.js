const express = require("express")
const app = express()
const port = 3000

// static files
app.use(express.static('public'))
app.use('/css',express.static(__dirname + 'public/assets/css'))
app.use('/js',express.static(__dirname + 'public/assets/js'))
app.use('/img',express.static(__dirname + 'public/assets/img'))

// template engine
app.set('views','./src/views')
app.set('view engine','ejs')

//Listen on port 3000
app.listen(port,() => console.log(`Escuchando el puerto ${port}`))