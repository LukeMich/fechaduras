class AddFieldToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :permissao, :integer
  end
end
