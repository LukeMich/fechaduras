class UsuariosController < ApplicationController
    
    def index
        
        @usuarios = Usuario.all
        
    end
    
    def liberarPortas
        
        @usuarios = Usuario.all
        @portas = Port.all
    
    end
end
