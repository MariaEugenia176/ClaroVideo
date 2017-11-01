
  Quando("efetuo o cadastro da pessoa") do
   
    page(Cadastro).preencher_cpf(Faker::CPF.numeric)
    page(Cadastro).botao_continuar_cpf

    @email = Faker::Internet.email
    page(Cadastro).preencher_email(@email) 
    page(Cadastro).preencher_email_confirmar(@email) 

    @senha = Faker::Internet.password(8)
    page(Cadastro).preencher_senha(@senha)
    page(Cadastro).repetir_senha(@senha)

    @nome = Faker::Name.first_name
    page(Cadastro).preencher_nome(@nome)

    page(Cadastro).preencher_sobrenome(Faker::Name.last_name)

    page(Cadastro).clicar_checkbox
    page(Cadastro).botao_seguinte 
  end

  Quando("retorno para a home") do
   page(Cadastro).aguardar_tela_inicial
   page(Home).clicar_menu_inicial
  end

  Então("o sistema loga o usuário com sucesso") do
    page(Home).clicar_menu_inicial
    page(Cadastro).clicar_nome_cadastrado
    page(Cadastro).validar_nome(@nome) 
  end