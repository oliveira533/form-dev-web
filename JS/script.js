document.getElementById('form').addEventListener('submit', async function(event) {
    event.preventDefault();
  
    const formData = {
      NomePaciente: document.getElementById('NomePaciente').value,
      Sexo: document.getElementById('Sexo').value,
      Genero: document.getElementById('Genero').value,
      RG: document.getElementById('RG').value,
      CNS: document.getElementById('CNS').value,
      DataNascimento: document.getElementById('DataNascimento').value,
      Telefone: document.getElementById('Telefone').value,
      Email: document.getElementById('Email').value,
      NomeMae: document.getElementById('NomeMae').value,
      CEP: document.getElementById('CEP').value,
      Endereco: document.getElementById('Endereco').value,
      Numero: document.getElementById('Numero').value,
      Complemento: document.getElementById('Complemento').value,
      Bairro: document.getElementById('Bairro').value,
      Cidade: document.getElementById('Cidade').value,
      UF: document.getElementById('UF').value,
      Doenca: document.getElementById('Doenca').value,
      Sintomas: document.getElementById('Sintomas').value
    };
  
    try {
      const response = await fetch('http://localhost:3000/pacientes', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(formData)
      });
  
      const result = await response.text();
      document.getElementById('response').textContent = result;
    } catch (error) {
      console.error('Erro ao inserir paciente:', error);
      document.getElementById('response').textContent = 'Erro ao inserir paciente';
    }
  });

document.getElementById('form-cep-value').addEventListener('blur', function() {
        let cep = this.value.replace(/\D/g, '');
        if (cep) {
            let url = `https://viacep.com.br/ws/${cep}/json/`;
            fetch(url)
                .then(response => response.json())
                .then(data => {
                    if (!data.erro) {
                        document.getElementById('form-street-value').value = data.logradouro;
                        document.getElementById('form-bairro-value').value = data.bairro;
                        document.getElementById('form-city-value').value = data.localidade;
                        document.getElementById('form-state-value').value = data.uf;
                    } else {
                        alert("CEP não encontrado.");
                        document.getElementById('form-street-value').value = "";
                        document.getElementById('form-bairro-value').value = "";
                        document.getElementById('form-city-value').value = "";
                        document.getElementById('form-state-value').value = "";
                    }
                })
                .catch(error => {
                    console.error('Erro ao buscar CEP:', error);
                    alert('Erro ao buscar CEP. Tente novamente mais tarde.');
                });
          }
      });