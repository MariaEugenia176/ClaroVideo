class Cadastro < Calabash::ABase
    
        def preencher_cpf cpf
          wait_for_elements_exist(["* id:'etCpf'"], :timeout => 30) 
          touch("* id:'etCpf'") 
          keyboard_enter_text(cpf) 
        end
   
        def botao_continuar_cpf
        touch("* id:'btContinue'") 
        hide_soft_keyboard
        end

        def preencher_email email
        touch("* id:'edit_email'")
        keyboard_enter_text(email)
        end

        def preencher_email_repeat email
        touch("* id:'edit_email_repeat'")
        keyboard_enter_text(email)
        end

        def preencher_senha senha
        touch("* id:'edit_password'")
        keyboard_enter_text(senha)
        end

        def repetir_senha senha
        touch("* id:'edit_password_repeat'")
        keyboard_enter_text(senha)
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
            wait_for_elements_exist(['android.widget.LinearLayout'], :timeout => 30) 
        end    

        def seta_voltar_home
            page(Geral).validar_texto('Selecione o seu plano')
            touch('android.widget.ImageButton index:0')
        end

        def validar_nome(nome)
            wait_for_elements_exist(['android.widget.CheckedTextView'], :timeout => 30) 
            touch('android.widget.CheckedTextView')
            page(Geral).validar_texto(nome)
        end

    end
  

