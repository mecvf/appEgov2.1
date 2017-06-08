class AddNewValuesToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :tipo, :string
    add_column :usuarios, :habilitado, :boolean
  end
end
