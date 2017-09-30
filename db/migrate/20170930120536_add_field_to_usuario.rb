class AddFieldToUsuario < ActiveRecord::Migration
  def change
    add_column :usuarios, :nome, :string, limit: 100
  end
end
