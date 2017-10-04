class UsuariosController < ApplicationController

  def index
    @users = Usuario.all
  end

  def show
    @user = Usuario.find(params[:id])
    unless current_usuario.admin?
      unless @user == current_usuario
        redirect_to root_path, :alert => "Somente o administrador pode acessar esta página."
      end
    end
  end

  def update
    @user = Usuario.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "Usuário atualizado com sucesso."
    else
      redirect_to users_path, :alert => "Não é possível atualizar usuário"
    end
  end

  def destroy
    user = Usuario.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "Usuário removido com sucesso."
  end
  
   def liberarPortas
        
        @usuarios = Usuario.all
        @portas = Port.all
    
    end
  
  private

  def admin_only
    unless current_ususario.admin?
      redirect_to root_path, :alert => "Você não possui permissão para acessar este recurso."
    end
  end

  def secure_params
    params.require(:usuario).permit(:role)
  end

end
