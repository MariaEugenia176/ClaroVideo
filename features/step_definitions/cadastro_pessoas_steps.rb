Dado("que estou na tela de cadastro de pessoas") do
    
  end
  
  Quando("preencho os dados da pessoa") do
    page(Home).menu_inicial
    page(Home).cadastre_se
    
    page(Cadastro).preencher_cpf(Faker::CPF.numeric)
    page(Cadastro).botao_continuar_cpf

    @email = Faker::Internet.email
    page(Cadastro).preencher_email(@email) 
    page(Cadastro).preencher_email_repeat(@email) 

    @senha = Faker::Internet.password(8)
    page(Cadastro).preencher_senha(@senha)
    page(Cadastro).repetir_senha(@senha)

    page(Cadastro).preencher_nome(Faker::Name.first_name)

    page(Cadastro).preencher_sobrenome(Faker::Name.last_name)
    
    page(Cadastro).clicar_checkbox
    page(Cadastro).botao_seguinte
 
  end
  
  Então("o sistema terá logado o usuário com sucesso") do
    page(Cadastro).seta_voltar_home
    page(Home).menu_inicial
    page(Cadastro).validar_nome(@nome) 
    
  end


