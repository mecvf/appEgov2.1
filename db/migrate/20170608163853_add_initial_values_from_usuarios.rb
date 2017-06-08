class AddInitialValuesFromUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :ci, :integer
  end
end
