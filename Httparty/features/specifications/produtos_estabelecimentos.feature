# encoding: utf-8
# language: pt  


Funcionalidade: Endpoint de Produtos e Estabelecimentos


Cenário: Consultar estabelecimentos e vericar "typeOfEstablishment"
Dado Endpoint de consulta de Produtos e Estabelecimentos
Quando realizar a consultar no Endpoint de Produtos e Estabelecimentos
Então deve retornar status "200" e a chave "typeOfEstablishment" 