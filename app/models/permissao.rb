class Permissao < ActiveRecord::Base
  belongs_to :porta
  belongs_to :usuario
end
