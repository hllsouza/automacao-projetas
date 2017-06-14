#language: pt

Funcionalidade: Busca post inexistente

Cenario: Realizar a busca de posts inexistente

  Quando eu bater nesse endpoint com um cep inexistente (/id)
  Então irá me retornar o erro Not Found 404