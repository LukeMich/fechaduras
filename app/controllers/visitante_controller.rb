class VisitanteController < ApplicationController
    
    def index
        
        if usuario_signed_in?
            visitante_index_path
        else
            redirect_to new_usuario_session_path    
        end
        
    end
end
