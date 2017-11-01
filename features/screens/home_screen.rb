class Home < Calabash::ABase
    
        def clicar_menu_inicial(timeout=20)
            wait_for_elements_exist(['android.widget.ImageButton index:0'], :timeout => timeout) 
            touch('android.widget.ImageButton index:0')
        end

        def clicar_cadastre_se(timeout=20)
            wait_for_elements_exist(["* text:'Cadastre-se'"], :timeout => timeout) 
            touch("* text:'Cadastre-se'")
        end
   
    end
  