#language: pt
Funcionalidade: Cadastro de pessoa no ClaroVideo
@cadastro
  Cenário: Cadastrar pessoa no aplicativo
    Dado que estou na tela de cadastro de pessoas
    Quando preencho os dados da pessoa 
    Então o sistema terá logado o usuário com sucesso 
