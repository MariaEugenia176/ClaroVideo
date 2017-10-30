class Geral < Calabash::ABase
             
    def validar_texto(text, timeout=20)
        wait_for_elements_exist(["* text:'#{text}'"], :timeout => timeout) 
    end
     
end
