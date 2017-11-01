#language: pt
Funcionalidade: Cadastro de pessoa no ClaroVideo
@cadastro
  Cenário: Cadastrar pessoa no aplicativo
    Dado que estou na tela de cadastro de pessoas
    Quando efetuo o cadastro da pessoa
    E retorno para a home
    Então o sistema loga o usuário com sucesso 
