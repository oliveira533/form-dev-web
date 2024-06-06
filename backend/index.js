const express = require('express');

const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: 'localhost', 
    user: 'root',      
    password: 'Senha@1234', 
    database: 'banco_pacientes'
  });

const app = express();

let erro;

try
{
    connection.connect((err) => {
    if (!err) {
      console.log('Conectado ao banco de dados.');
    }
    else{
        erro = err
    }
  });
}
catch{
    console.log('Não foi possível conectar no banco de dados: ', erro);
}



app.post('/cadastro', function(req, res){
    const {
        NomePaciente, Sexo, Genero, RG, CNS, DataNascimento, Telefone, Email,
        NomeMae, CEP, Endereco, Numero, Complemento, Bairro, Cidade, UF, Doenca, Sintomas
      } = req.body;

      const query = `
      INSERT INTO Pacientes (
        NomePaciente, Sexo, Genero, RG, CNS, DataNascimento, Telefone, Email,
        NomeMae, CEP, Endereco, Numero, Complemento, Bairro, Cidade, UF, Doenca, Sintomas
      ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;

      const values = [
        NomePaciente, Sexo, Genero, RG, CNS, DataNascimento, Telefone, Email,
        NomeMae, CEP, Endereco, Numero, Complemento, Bairro, Cidade, UF, Doenca, Sintomas
      ];

      connection.query(query, values, (err, results) => {
        if (err) {
          console.error('Erro ao inserir dados:', err);
          res.status(500).send('Erro ao inserir dados');
        } else {
          res.status(201).send('Dados inseridos com sucesso');
        }
      });

});

app.listen(3000);