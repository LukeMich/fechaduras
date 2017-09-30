class Usuario < ActiveRecord::Base
  
  enum permissao: [:usuario, :bloqueado, :admin]
  
  after_initialize :set_default_permissao, :if => :new_record?
  
  def set_default_permissao
    self.permissao ||= :usuario
  end
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
