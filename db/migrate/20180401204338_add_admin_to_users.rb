class AddAdminToUsers < ActiveRecord::Migration[5.1]
  def change
    #adicionando columa de Admin na tabela de Usuarios, com valor default 'false'
    add_column :users, :admin, :boolean, default: false
  end
end
