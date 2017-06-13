#language: pt

Funcionalidade: Logout

@logout_sucesso
Cenario: Acessar dashboard do sistema
    * usuário acessa dashboard

    Quando realizo logout do sistema
    Então vejo mensagem de deslogado de area segura