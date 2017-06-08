class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :ci
      t.string :nombres
      t.string :apellidos

      t.timestamps
    end
  end
end
