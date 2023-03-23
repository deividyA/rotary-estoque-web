class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.references :cliente_fk, clientes: true, null: false, foreign_key: true
      t.references :estoque_fk, estoque: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
