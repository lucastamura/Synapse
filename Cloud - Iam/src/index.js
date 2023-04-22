const express = require('express');
const mysql = require('mysql');
const cors = require('cors');
//IMPORTANDO BIBLIOTECAS


const app = express(); //CRIA UMA API/SERVIDOR

const connection = mysql.createConnection({ 
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'lojavirtual'
});
connection.connect(); 
//ESTABELECENDO CONEXÃO DO BACK COM O BANCO

//CRIAR UM CAMINHO ENTRE O FRONT E O BANCO
//post - cria
//get - cria
//put - alterar
app.get('/products',function(req, res){ //font fez um get no caminho /product
    connection.query('SELECT * FROM products WHERE price >=10',function(error, results){
        if(error){
            throw error;
        }

        else{
            res.send(results)
        }
    })
})

app.get('/products/geladeira',function(req, res){ //font fez um get no caminho /product
    connection.query('SELECT * FROM products WHERE categoria="Geladeira"',function(error, results){
        if(error){
            throw error;
        }

        else{
            res.send(results)
        }
    })
})

app.get('/products/1',function(req, res){ //font fez um get no caminho /product
    connection.query('SELECT * FROM products WHERE id="1"',function(error, results){
        if(error){
            throw error;
        }

        else{
            res.send(results)
        }
    })
})

app.use(cors({ 
    origin: '*' 
}));

//SEGURANÇA DO BANCO

app.listen(9901,'0.0.0.0', function(){
    console.log("Aplicatação rodando na porta: 9901");
});
//RODA A APLICAÇÃO