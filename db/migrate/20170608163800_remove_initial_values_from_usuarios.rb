class RemoveInitialValuesFromUsuarios < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :ci, :string
  end
end
