class Home < Calabash::ABase
    
        def menu_inicial (timeout=20)
        wait_for_elements_exist(['android.widget.ImageButton index:0'], :timeout => timeout) 
        touch('android.widget.ImageButton index:0')
        end

        def cadastre_se
        touch("* text:'Cadastre-se'")
        end
   
    end
  