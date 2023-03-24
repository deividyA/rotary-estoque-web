class CreateEmprestimos < ActiveRecord::Migration[7.0]
  def change
    create_table :emprestimos do |t|
      t.references :clientes, clientes: true, null: false, foreign_key: true
      t.references :estoques, estoque: true, null: false, foreign_key: true
      t.date :data_inicial
      t.date :data_final
      t.string :status_emprestimo
    end
  end
end
