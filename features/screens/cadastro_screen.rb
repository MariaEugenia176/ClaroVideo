class Cadastro < Calabash::ABase
    
        def preencher_cpf(timeout=20,cpf)
            wait_for_element_exists("* id:'etCpf'", :timeout => 20)
            touch("* id:'etCpf'") 
            keyboard_enter_text(cpf)
            hide_soft_keyboard 
        end
   
        def botao_continuar_cpf(timeout=20)
            wait_for_element_exists("* id:'btContinue'", :timeout => 20)
            touch("* id:'btContinue'") 
        end

        def preencher_email email
            touch("* id:'edit_email'")
            keyboard_enter_text(email)
            hide_soft_keyboard
        end

        def preencher_email_confirmar email
            touch("* id:'edit_email_repeat'")
            keyboard_enter_text(email)
            hide_soft_keyboard
        end

        def preencher_senha senha
             touch("* id:'edit_password'")
            keyboard_enter_text(senha)
            hide_soft_keyboard
        end

        def repetir_senha senha
            touch("* id:'edit_password_repeat'")
            keyboard_enter_text(senha)
            hide_soft_keyboard
        end

        def preencher_nome nome
            touch("* id:'edit_name'")
            keyboard_enter_text(nome)
            hide_soft_keyboard
        end

        def preencher_sobrenome sobrenome
            touch("* id:'edit_surname'")
            keyboard_enter_text(sobrenome)
            hide_soft_keyboard
        end

        def clicar_checkbox
            touch("* id:'checkbox_terms'")
        end

        def botao_seguinte
            touch("* id:'btn_continue'")
        end    

        def aguardar_tela_inicial
            wait_for_elements_exist(['android.widget.LinearLayout'], :timeout => 30) 
            page(Geral).validar_texto('Selecione o seu plano')
        end

        def clicar_nome_cadastrado
            wait_for_elements_exist(['android.widget.CheckedTextView'], :timeout => 30) 
            touch('android.widget.CheckedTextView')
        end

        def validar_nome(nome)
            page(Geral).validar_texto(nome)
        end

    end
  

