#language: pt

Funcionalidade: Login
  Sendo um usuário da Projetas
  Posso logar no sistema
  Para realizar validações

Cenario: Acessar sistema
  * acessar sistema

@login @logout
Cenario: Validar mensagem de logado com sucesso
  
  Dado que sou "admin" do sistema
  Quando faço login
  Então vejo o dashboard logado com a mensagem em area segura
